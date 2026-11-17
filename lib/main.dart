import 'dart:math';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'data/catalog.dart';
import 'models/question.dart';
import 'services/question_repository.dart';

void main() => runApp(const TotalTriviaApp());

const green = Color(0xFF305A49);
const gold = Color(0xFFD8AC4B);
const cream = Color(0xFFFFF8E9);

// Local titles ensure the Harry Potter screens compile even when an older
// catalog.dart is installed. Match the keys used by expanded_questions.dart.
const _harryPotterBookTitles = <String>[
  'Book 1: Sorcerer’s Stone',
  'Book 2: Chamber of Secrets',
  'Book 3: Prisoner of Azkaban',
  'Book 4: Goblet of Fire',
  'Book 5: Order of the Phoenix',
  'Book 6: Half-Blood Prince',
  'Book 7: Deathly Hallows',
];

const _harryPotterMovieTitles = <String>[
  'Film 1: Sorcerer’s Stone',
  'Film 2: Chamber of Secrets',
  'Film 3: Prisoner of Azkaban',
  'Film 4: Goblet of Fire',
  'Film 5: Order of the Phoenix',
  'Film 6: Half-Blood Prince',
  'Film 7: Deathly Hallows Part 1',
  'Film 8: Deathly Hallows Part 2',
];

// Display names differ from compact question-bank keys to preserve compatibility.
String _harryPotterTitle(String key) {
  const bookNames = <String>[
    "Harry Potter and the Sorcerer's Stone",
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter and the Prisoner of Azkaban",
    "Harry Potter and the Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows",
  ];
  const filmNames = <String>[
    "Harry Potter and the Sorcerer's Stone",
    "Harry Potter and the Chamber of Secrets",
    "Harry Potter and the Prisoner of Azkaban",
    "Harry Potter and the Goblet of Fire",
    "Harry Potter and the Order of the Phoenix",
    "Harry Potter and the Half-Blood Prince",
    "Harry Potter and the Deathly Hallows – Part 1",
    "Harry Potter and the Deathly Hallows – Part 2",
  ];
  final bookIndex = harryPotterBooks.indexOf(key);
  if (bookIndex >= 0) return bookNames[bookIndex];
  final filmIndex = harryPotterMovies.indexOf(key);
  if (filmIndex >= 0) return filmNames[filmIndex];
  return key;
}


// A consistent Home button on every page. The root screen stays in place.
Widget _homeAction(BuildContext context) => IconButton(
  icon: const Icon(Icons.home),
  tooltip: 'Home',
  onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
);

class TotalTriviaApp extends StatelessWidget {
  const TotalTriviaApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Total Trivia',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(useMaterial3: true, scaffoldBackgroundColor: cream,
      colorScheme: ColorScheme.fromSeed(seedColor: green, primary: green),
      appBarTheme: const AppBarTheme(backgroundColor: cream, foregroundColor: green),
      cardTheme: const CardThemeData(color: Colors.white)),
    home: const CategoriesScreen(),
  );
}


// All progress is stored locally. Best results determine completion percentage,
// while attempts/score counts also support achievements.
class TotalTriviaProgress {
  static const _prefix = 'tt_progress_v1_';
  static String _key(String c, String t, String d) => '$_prefix${Uri.encodeComponent(c)}|${Uri.encodeComponent(t)}|$d';
  static Future<SharedPreferences> _prefs() => SharedPreferences.getInstance();

  static Future<void> save(String category, String topic, String level, int score) async {
    final prefs = await _prefs();
    final key = _key(category, topic, level);
    final previousBest = prefs.getInt('${key}_best') ?? 0;
    if (score > previousBest) await prefs.setInt('${key}_best', score);
    await prefs.setInt('${key}_attempts', (prefs.getInt('${key}_attempts') ?? 0) + 1);
    if (score == 10) await prefs.setInt('${key}_perfects', (prefs.getInt('${key}_perfects') ?? 0) + 1);
  }

  static Future<ProgressSnapshot> load() async {
    final prefs = await _prefs();
    final records = <String, Map<String, Map<String, LevelProgress>>>{};
    for (final category in categories) {
      records[category.title] = {};
      for (final topic in category.subcategories) {
        records[category.title]![topic] = {};
        for (final level in difficulties) {
          final key = _key(category.title, topic, level);
          records[category.title]![topic]![level] = LevelProgress(
            best: prefs.getInt('${key}_best') ?? 0,
            attempts: prefs.getInt('${key}_attempts') ?? 0,
            perfects: prefs.getInt('${key}_perfects') ?? 0,
          );
        }
      }
    }
    return ProgressSnapshot(records);
  }
}
class LevelProgress {
  final int best, attempts, perfects;
  const LevelProgress({required this.best, required this.attempts, required this.perfects});
}
class ProgressSnapshot {
  final Map<String, Map<String, Map<String, LevelProgress>>> records;
  const ProgressSnapshot(this.records);

  bool _isPlayable(String category, String topic, String level) =>
      QuestionRepository.questionsFor(category, topic, level).length >= 10;

  int get maxPoints {
    var total = 0;
    for (final category in categories) {
      for (final topic in category.subcategories) {
        total += topicMax(category.title, topic);
      }
    }
    return total;
  }

  Iterable<LevelProgress> get levels sync* {
    for (final topics in records.values) {
      for (final levelMap in topics.values) {
        yield* levelMap.values;
      }
    }
  }

  int get points {
    var total = 0;
    for (final category in categories) {
      total += categoryPoints(category.title);
    }
    return total;
  }

  int get attempts => levels.fold(0, (sum, r) => sum + r.attempts);
  int get perfects => levels.fold(0, (sum, r) => sum + r.perfects);
  int get topicsPlayed => records.values
      .expand((t) => t.values)
      .where((d) => d.values.any((r) => r.attempts > 0))
      .length;
  int get categoriesPlayed => records.values
      .where((topics) => topics.values
          .any((d) => d.values.any((r) => r.attempts > 0)))
      .length;
  int get levelsPlayed => levels.where((r) => r.attempts > 0).length;

  int categoryPoints(String category) {
    final topics = records[category];
    if (topics == null) return 0;

    var total = 0;
    for (final topic in topics.keys) {
      total += topicPoints(category, topic);
    }
    return total;
  }

  int categoryMax(String category) {
    for (final categoryDefinition in categories) {
      if (categoryDefinition.title == category) {
        return categoryDefinition.subcategories.fold(
          0,
          (sum, topic) => sum + topicMax(category, topic),
        );
      }
    }
    return 0;
  }

  int topicPoints(String category, String topic) {
    final levelRecords = records[category]?[topic];
    if (levelRecords == null) return 0;

    var total = 0;
    for (final level in difficulties) {
      if (_isPlayable(category, topic, level)) {
        total += levelRecords[level]?.best ?? 0;
      }
    }
    return total;
  }

  int topicMax(String category, String topic) {
    var playableLevels = 0;
    for (final level in difficulties) {
      if (_isPlayable(category, topic, level)) playableLevels++;
    }
    return playableLevels * 10;
  }

  double get fraction => maxPoints == 0 ? 0 : points / maxPoints;
}

Widget _progressLine(String label, int points, int max) => Column(
  crossAxisAlignment: CrossAxisAlignment.start, children: [
    Row(children: [
      Expanded(child: Text(label, style: const TextStyle(fontWeight: FontWeight.bold))),
      Text('$points/$max · ${(max == 0 ? 0 : 100 * points / max).toStringAsFixed(1)}%'),
    ]),
    const SizedBox(height: 7),
    LinearProgressIndicator(value: max == 0 ? 0.0 : points / max, color: green, minHeight: 8),
  ],
);
void _playTopicNext(BuildContext context, String category, String topic, ProgressSnapshot progress) {
  for (final level in difficulties) {
    final bank = QuestionRepository.questionsFor(category, topic, level);
    if (bank.length < 10) continue;
    final saved = progress.records[category]?[topic]?[level];
    if ((saved?.best ?? 0) < 10 || (saved?.attempts ?? 0) == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (_) =>
        QuizScreen(category: category, topic: topic, level: level, pool: bank)));
      return;
    }
  }
  for (final level in difficulties) {
    final bank = QuestionRepository.questionsFor(category, topic, level);
    if (bank.length >= 10) {
      Navigator.push(context, MaterialPageRoute(builder: (_) =>
        QuizScreen(category: category, topic: topic, level: level, pool: bank)));
      return;
    }
  }
  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
    content: Text('This topic does not have a playable 10-question level yet.')));
}
class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('My Progress'), actions: [_homeAction(context)]),
    body: FutureBuilder<ProgressSnapshot>(
      future: TotalTriviaProgress.load(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
        final progress = snapshot.data!;
        return SafeArea(child: Scrollbar(child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(18),
          children: [
            const Text('Overall Total Trivia Progress',
                style: TextStyle(color: green, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _progressLine('All categories combined', progress.points, progress.maxPoints),
            const SizedBox(height: 10),
            Text('${progress.attempts} quizzes completed · ${progress.topicsPlayed} topics played · '
              '${progress.categoriesPlayed} categories explored'),
            const SizedBox(height: 20),
            const Text('Progress by Category', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
            const SizedBox(height: 7),
            const Text('Expand a category, then a topic, to view Easy, Medium, and Hard. Each level has its own Play button.'),
            ...categories.map((category) => Card(child: ExpansionTile(
              title: Text('${category.icon}  ${category.title}'),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: _progressLine('Category total', progress.categoryPoints(category.title),
                  progress.categoryMax(category.title))),
              children: category.subcategories.map((topic) => ExpansionTile(
                title: Text(_harryPotterTitle(topic),
                    style: const TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 6, bottom: 7),
                  child: _progressLine('Topic total',
                      progress.topicPoints(category.title, topic),
                      progress.topicMax(category.title, topic)),
                ),
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      icon: const Icon(Icons.skip_next),
                      label: const Text('Play Next'),
                      onPressed: () => _playTopicNext(
                        context, category.title, topic, progress),
                    ),
                  ),
                  ...difficulties.map((level) {
                  final result = progress.records[category.title]?[topic]?[level];
                  final best = result?.best ?? 0;
                  final attempts = result?.attempts ?? 0;
                  final bank = QuestionRepository.questionsFor(category.title, topic, level);
                  final available = bank.length >= 10;
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, right: 12, bottom: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _progressLine(level, best, 10),
                        const SizedBox(height: 5),
                        Row(children: [
                          Expanded(child: Text(available
                              ? '$attempts quiz${attempts == 1 ? '' : 'zes'} played · Best: $best/10'
                              : 'Coming soon · ${bank.length}/10 questions available',
                              style: const TextStyle(fontSize: 12))),
                          TextButton.icon(
                            icon: Icon(available ? Icons.play_arrow : Icons.lock_outline),
                            label: Text(available ? 'Play $level' : 'Unavailable'),
                            onPressed: available ? () => Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => QuizScreen(
                                category: category.title,
                                topic: topic,
                                level: level,
                                pool: bank,
                              )),
                            ) : null,
                          ),
                        ]),
                      ],
                    ),
                  );
                  }),
                ],
              )).toList(),
            ))),
          ],
        )));
      },
    ),
  );
}
class AchievementsScreen extends StatelessWidget {
  const AchievementsScreen({super.key});
  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('My Achievements'), actions: [_homeAction(context)]),
    body: FutureBuilder<ProgressSnapshot>(
      future: TotalTriviaProgress.load(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
        final p = snapshot.data!;
        final achievements = <(String, String, int, int, IconData)>[
          ('First Quiz', 'Finish your first quiz', p.attempts, 1, Icons.menu_book),
          ('Quiz Explorer', 'Complete 5 quizzes', p.attempts, 5, Icons.explore),
          ('Ten Quizzes', 'Complete 10 quizzes', p.attempts, 10, Icons.stars),
          ('Twenty Quizzes', 'Complete 20 quizzes', p.attempts, 20, Icons.emoji_events),
          ('Fifty Quizzes', 'Complete 50 quizzes', p.attempts, 50, Icons.local_fire_department),
          ('Century Club', 'Complete 100 quizzes', p.attempts, 100, Icons.military_tech),
          ('Perfect Score', 'Get 10/10 on a quiz', p.perfects, 1, Icons.workspace_premium),
          ('Five Perfects', 'Earn five perfect scores', p.perfects, 5, Icons.auto_awesome),
          ('Ten Perfects', 'Earn ten perfect scores', p.perfects, 10, Icons.diamond),
          ('Three Topics', 'Try three different topics', p.topicsPlayed, 3, Icons.category),
          ('Ten Topics', 'Try ten different topics', p.topicsPlayed, 10, Icons.travel_explore),
          ('Thirty Topics', 'Try thirty different topics', p.topicsPlayed, 30, Icons.public),
          ('Category Sampler', 'Play in three categories', p.categoriesPlayed, 3, Icons.grid_view),
          ('Around the App', 'Play in every category', p.categoriesPlayed, categories.length, Icons.language),
          ('Level Starter', 'Complete 10 unique difficulty levels', p.levelsPlayed, 10, Icons.trending_up),
          ('Level Collector', 'Complete 30 unique difficulty levels', p.levelsPlayed, 30, Icons.leaderboard),
          ('100 Points', 'Earn 100 best-score points', p.points, 100, Icons.flag),
          ('500 Points', 'Earn 500 best-score points', p.points, 500, Icons.insights),
          ('1000 Points', 'Earn 1000 best-score points', p.points, 1000, Icons.shield),
          ('Quarter Complete', 'Reach 25% overall progress', p.points, (p.maxPoints / 4).ceil(), Icons.pie_chart),
          ('Halfway There', 'Reach 50% overall progress', p.points, (p.maxPoints / 2).ceil(), Icons.tour),
          ('Total Trivia Master', 'Reach 100% overall progress', p.points, p.maxPoints, Icons.school),
        ];
        return SafeArea(child: Scrollbar(child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          padding: const EdgeInsets.all(16), children: [
            Text('${achievements.where((a) => a.$3 >= a.$4).length}/${achievements.length} achievements earned',
              style: const TextStyle(color: green, fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            const Text('Category Badges', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: green)),
            const SizedBox(height: 6),
            const Text('Earn each colorful badge by completing a quiz in its category.'),
            const SizedBox(height: 12),
            Wrap(spacing: 9, runSpacing: 9, children: [
              for (final category in categories)
                Builder(builder: (_) {
                  final achieved = p.records[category.title]?.values.any(
                    (levels) => levels.values.any((r) => r.attempts > 0)) ?? false;
                  return Container(
                    width: 108,
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                    decoration: BoxDecoration(
                      color: achieved ? const Color(0xFFFFF1C9) : Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: achieved ? gold : const Color(0xFFDADDD7)),
                    ),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Text(category.icon, style: const TextStyle(fontSize: 32)),
                      const SizedBox(height: 5),
                      Text(category.title, textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600)),
                      const SizedBox(height: 4),
                      Text(achieved ? 'Unlocked' : 'Not yet',
                        style: TextStyle(fontSize: 11, color: achieved ? green : Colors.grey)),
                    ]),
                  );
                }),
            ]),
            const SizedBox(height: 22),
            const Text('Milestone Achievements', style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: green)),
            const SizedBox(height: 10),
            ...achievements.map((a) {
              final earned = a.$3 >= a.$4;
              const badgeColors = <Color>[
                Color(0xFF3D8D66), Color(0xFF4E75D9), Color(0xFFE0933D),
                Color(0xFF9A60BA), Color(0xFFDB6B82), Color(0xFF38A7A0),
                Color(0xFFB78E26), Color(0xFF8061B3), Color(0xFF3873B6),
                Color(0xFFBB6E43), Color(0xFF529E50), Color(0xFFE17A54),
              ];
              final badgeColor = badgeColors[achievements.indexOf(a) % badgeColors.length];
              return Card(color: earned ? const Color(0xFFFFF4CB) : Colors.white,
                child: ListTile(
                  leading: Container(
                    width: 52, height: 52,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: badgeColor.withAlpha(earned ? 52 : 27),
                      border: Border.all(color: badgeColor.withAlpha(170), width: 1.5),
                    ),
                    child: Icon(a.$5, color: badgeColor, size: 29),
                  ),
                  title: Text(a.$1, style: const TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(a.$2),
                    const SizedBox(height: 5),
                    LinearProgressIndicator(value: (a.$3 / a.$4).clamp(0.0, 1.0).toDouble(), color: green),
                    Text(earned ? 'Earned!' : '${a.$3}/${a.$4}'),
                  ]),
                ));
            }),
          ],
        )));
      },
    ),
  );
}

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: const Text('Total Trivia', style: TextStyle(fontWeight: FontWeight.bold)),
      actions: [_homeAction(context)],
    ),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(), padding: const EdgeInsets.all(20), children: [
      const Text('One app. Every curiosity.', style: TextStyle(fontSize: 24, color: green, fontWeight: FontWeight.bold)),
      const SizedBox(height: 8),
      const Text('Pick a category, choose your difficulty, and answer 10 questions.'),
      const SizedBox(height: 18),
      Card(child: ListTile(
        leading: const Icon(Icons.insights, color: green, size: 29),
        title: const Text('My Progress', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        subtitle: const Text('Overall completion and Play Next by topic'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const ProgressScreen())),
      )),
      Card(child: ListTile(
        leading: const Icon(Icons.emoji_events, color: gold, size: 29),
        title: const Text('My Achievements', style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        subtitle: const Text('Unlock 22 milestones as you play'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => const AchievementsScreen())),
      )),
      ...categories.map((category) => Card(child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
        leading: Text(category.icon, style: const TextStyle(fontSize: 30)),
        title: Text(category.title, style: const TextStyle(fontSize: 19, fontWeight: FontWeight.bold)),
        subtitle: Text(category.title == 'Harry Potter' ? '7 books · 8 movies' : '${category.subcategories.length} topics'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
          category.title == 'Harry Potter' ? const HarryPotterSectionsScreen() : (category.title == 'India' ? const IndiaSectionsScreen() : TopicsScreen(category: category)))),
      ))),
    ]))),
  );
}

class IndiaSectionsScreen extends StatelessWidget {
  const IndiaSectionsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('India'), actions: [_homeAction(context)]),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16), children: [
        const Text('Explore India', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 12),
        Card(child: ListTile(
          title: const Text('28 States'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
            const TopicsScreen(category: TriviaCategory('India', '🇮🇳', indiaStates)))),
        )),
        Card(child: ListTile(
          title: const Text('8 Union Territories'),
          subtitle: const Text('Includes Delhi, Ladakh, Puducherry, and more'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
            const TopicsScreen(category: TriviaCategory('India', '🇮🇳', indiaUnionTerritories)))),
        )),
      ],
    ))),
  );
}

class HarryPotterSectionsScreen extends StatelessWidget {
  const HarryPotterSectionsScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Harry Potter'), actions: [_homeAction(context)]),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.all(20),
      children: [
        const Text('Choose Books or Movies', style: TextStyle(fontSize: 24, color: green, fontWeight: FontWeight.bold)),
        const SizedBox(height: 14),
        Card(child: ListTile(
          leading: const Icon(Icons.menu_book), title: const Text('Books'),
          subtitle: const Text('All 7 original novels'), trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
            const HarryPotterTitlesScreen(isBooks: true))),
        )),
        Card(child: ListTile(
          leading: const Icon(Icons.movie), title: const Text('Movies'),
          subtitle: const Text('All 8 original films'), trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
            const HarryPotterTitlesScreen(isBooks: false))),
        )),
      ],
    ))),
  );
}

class HarryPotterTitlesScreen extends StatelessWidget {
  final bool isBooks;
  const HarryPotterTitlesScreen({super.key, required this.isBooks});
  @override
  Widget build(BuildContext context) {
    final titles = isBooks ? _harryPotterBookTitles : _harryPotterMovieTitles;
    return Scaffold(
      appBar: AppBar(title: Text(isBooks ? 'Harry Potter Books' : 'Harry Potter Movies'), actions: [_homeAction(context)]),
      body: SafeArea(child: Scrollbar(child: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: const EdgeInsets.all(16),
        children: [for (final title in titles) Card(child: ListTile(
          title: Text(_harryPotterTitle(title)),
          subtitle: Text('${_countForTopic('Harry Potter', title)} questions available'),
          trailing: const Icon(Icons.chevron_right),
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) =>
            DifficultyScreen(category: 'Harry Potter', topic: title))),
        ))],
      ))),
    );
  }
}

class TopicsScreen extends StatelessWidget {
  final TriviaCategory category;
  const TopicsScreen({super.key, required this.category});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text('${category.icon}  ${category.title}'), actions: [_homeAction(context)]),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(), padding: const EdgeInsets.all(16), children: [
      ...category.subcategories.map((topic) => Card(child: ListTile(
        title: Text(topic, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text(_countForTopic(category.title, topic) > 0
          ? '${_countForTopic(category.title, topic)} questions available'
          : 'Questions coming soon'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (_) => DifficultyScreen(category: category.title, topic: topic))),
      ))),
    ]))),
  );
}

int _countForTopic(String category, String topic) =>
  difficulties.fold<int>(0, (count, d) => count + QuestionRepository.questionsFor(category, topic, d).length);


class DifficultyScreen extends StatelessWidget {
  final String category, topic;
  const DifficultyScreen({super.key, required this.category, required this.topic});
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: Text(_harryPotterTitle(topic)), actions: [_homeAction(context)]),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(), padding: const EdgeInsets.all(20), children: [
      Text('$category · ${_harryPotterTitle(topic)}', style: const TextStyle(color: green, fontSize: 24, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      const Text('Each available quiz has exactly 10 randomly chosen questions.'),
      const SizedBox(height: 16),
      ...difficulties.map((level) {
        final questions = QuestionRepository.questionsFor(category, topic, level);
        final ready = questions.length >= 10;
        return Card(child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: Text(level, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          subtitle: Text(ready ? '10 drawn randomly from ${questions.length} available · ${questions.length >= 20 ? '20-question pool ready' : 'pool expanding'}' : 'Coming soon · ${questions.length} questions available (10 needed to play)'),
          trailing: Icon(ready ? Icons.play_circle_fill : Icons.lock_clock, color: ready ? green : Colors.grey),
          onTap: ready ? () => Navigator.push(context, MaterialPageRoute(
            builder: (_) => QuizScreen(category: category, topic: topic,
              level: level, pool: questions))) : null,
        ));
      }),
    ]))),
  );
}

class QuizScreen extends StatefulWidget {
  final String category, topic, level;
  final List<Question> pool;
  const QuizScreen({super.key, required this.category, required this.topic,
    required this.level, required this.pool});
  @override State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late final List<Question> questions;
  int current = 0, score = 0;
  int? choice;

  @override
  void initState() {
    super.initState();
    final selected = List<Question>.from(widget.pool)..shuffle(Random());
    questions = selected.take(10).toList();
  }

  // Grade the question once, immediately when the user selects an answer.
  void chooseAnswer(int selectedIndex) {
    if (choice != null) return; // Prevent changing the answer or double scoring.
    setState(() {
      choice = selectedIndex;
      if (selectedIndex == questions[current].correctAnswer) score++;
    });
  }

  Future<void> next() async {
    if (choice == null) return;
    if (current == questions.length - 1) {
      await TotalTriviaProgress.save(widget.category, widget.topic, widget.level, score);
      if (!mounted) return;
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => ResultsScreen(
        category: widget.category,
        topic: widget.topic,
        level: widget.level,
        score: score,
        total: questions.length,
      )));
    } else {
      setState(() {
        current++;
        choice = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final q = questions[current];
    final answered = choice != null;
    final isCorrect = answered && choice == q.correctAnswer;
    final correctAnswer = q.answers[q.correctAnswer];

    return Scaffold(
      appBar: AppBar(title: Text('${_harryPotterTitle(widget.topic)} · ${widget.level}'), actions: [_homeAction(context)]),
      body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(), padding: const EdgeInsets.all(20), children: [
        LinearProgressIndicator(value: (current + 1) / questions.length, color: green),
        const SizedBox(height: 20),
        Text('Question ${current + 1} of ${questions.length}',
          style: const TextStyle(color: green)),
        const SizedBox(height: 14),
        Text(q.question,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        for (var i = 0; i < q.answers.length; i++)
          Card(
            color: answered && i == q.correctAnswer
                ? const Color(0xFFE1F1E3)
                : answered && i == choice
                    ? const Color(0xFFFFE5E2)
                    : Colors.white,
            child: ListTile(
              title: Text(q.answers[i]),
              leading: Icon(
                answered && i == q.correctAnswer
                    ? Icons.check_circle
                    : answered && i == choice
                        ? Icons.cancel
                        : Icons.radio_button_unchecked,
                color: answered && i == q.correctAnswer
                    ? Colors.green.shade800
                    : answered && i == choice
                        ? Colors.red.shade700
                        : Colors.grey,
              ),
              onTap: answered ? null : () => chooseAnswer(i),
            ),
          ),
        if (answered) ...[
          const SizedBox(height: 14),
          Card(
            color: isCorrect ? const Color(0xFFE1F1E3) : const Color(0xFFFFE5E2),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(children: [
                  Icon(isCorrect ? Icons.check_circle : Icons.cancel,
                    color: isCorrect ? Colors.green.shade800 : Colors.red.shade700),
                  const SizedBox(width: 8),
                  Text(isCorrect ? 'Correct!' : 'Incorrect',
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ]),
                if (!isCorrect) ...[
                  const SizedBox(height: 10),
                  Text('Correct answer: $correctAnswer',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                ],
                if (q.explanation.trim().isNotEmpty) ...[
                  const SizedBox(height: 10),
                  Text(q.explanation),
                ],
              ]),
            ),
          ),
        ],
        const SizedBox(height: 18),
        FilledButton(
          onPressed: answered ? next : null,
          child: Text(current == questions.length - 1 ? 'FINISH QUIZ' : 'NEXT QUESTION'),
        ),
      ]))),
    );
  }
}

class ResultsScreen extends StatelessWidget {
  final String category, topic, level;
  final int score, total;
  const ResultsScreen({super.key, required this.category, required this.topic,
    required this.level, required this.score, required this.total});
  void playNextLevel(BuildContext context) {
    final levelIndex = difficulties.indexOf(level);
    // Easy -> Medium -> Hard within the same topic.
    if (levelIndex >= 0 && levelIndex < difficulties.length - 1) {
      final nextLevel = difficulties[levelIndex + 1];
      final pool = QuestionRepository.questionsFor(category, topic, nextLevel);
      if (pool.length >= 10) {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => QuizScreen(
          category: category, topic: topic, level: nextLevel, pool: pool)));
      } else {
        // Clearly explain unavailable question banks; never open an empty quiz.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('$nextLevel questions for $topic are coming soon.')));
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>
          DifficultyScreen(category: category, topic: topic)));
      }
      return;
    }

    // After Hard, advance to the next playable topic's Easy quiz.
    final matching = categories.where((c) => c.title == category);
    if (matching.isNotEmpty) {
      final topics = matching.first.subcategories;
      final currentTopicIndex = topics.indexOf(topic);
      for (var i = currentTopicIndex + 1; i < topics.length; i++) {
        final nextPool = QuestionRepository.questionsFor(category, topics[i], 'Easy');
        if (nextPool.length >= 10) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => QuizScreen(
            category: category, topic: topics[i], level: 'Easy', pool: nextPool)));
          return;
        }
      }
      // No following playable topic; let the player choose another topic.
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>
        category == 'Harry Potter' ? const HarryPotterSectionsScreen() : TopicsScreen(category: matching.first)));
      return;
    }
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  Future<void> shareResults(BuildContext context) async {
    final percentage = (100 * score / total).round();
    final message = 'I scored $score/$total ($percentage%) on Total Trivia!\n'
        'Category: $category\nTopic: ${_harryPotterTitle(topic)}\nDifficulty: $level\n'
        'How would you do?';
    try {
      final renderObject = context.findRenderObject();
      final box = renderObject is RenderBox ? renderObject : null;
      await SharePlus.instance.share(ShareParams(
        text: message,
        subject: 'My Total Trivia results',
        sharePositionOrigin: box == null ? null : box.localToGlobal(Offset.zero) & box.size,
      ));
    } catch (_) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Sharing is unavailable on this device.')),
      );
    }
  }

  @override Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(title: const Text('Quiz Complete'), actions: [_homeAction(context)]),
    body: SafeArea(child: Scrollbar(child: ListView(
      physics: const AlwaysScrollableScrollPhysics(), padding: const EdgeInsets.all(24), children: [
      const Icon(Icons.emoji_events, color: gold, size: 76),
      const SizedBox(height: 12),
      const Text('Quiz Complete!', textAlign: TextAlign.center,
        style: TextStyle(color: green, fontSize: 28, fontWeight: FontWeight.bold)),
      const SizedBox(height: 10),
      Text('$score / $total', textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 44, fontWeight: FontWeight.bold)),
      Text('${(100 * score / total).round()}% correct', textAlign: TextAlign.center),
      const SizedBox(height: 12),
      Text('$category · ${_harryPotterTitle(topic)} · $level', textAlign: TextAlign.center),
      const SizedBox(height: 22),
      OutlinedButton.icon(
        icon: const Icon(Icons.share),
        label: const Text('SHARE RESULTS'),
        onPressed: () => shareResults(context),
      ),
      const SizedBox(height: 8),
      FilledButton.icon(
        icon: const Icon(Icons.arrow_forward),
        label: const Text('PLAY NEXT LEVEL'),
        onPressed: () => playNextLevel(context),
      ),
      const SizedBox(height: 8),
      FilledButton.icon(icon: const Icon(Icons.replay), label: const Text('PLAY AGAIN'),
        onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => QuizScreen(
          category: category, topic: topic, level: level, pool: QuestionRepository.questionsFor(category, topic, level))))),
      OutlinedButton.icon(icon: const Icon(Icons.home), label: const Text('HOME'),
        onPressed: () => Navigator.popUntil(context, (route) => route.isFirst)),
    ]))),
  );
}
