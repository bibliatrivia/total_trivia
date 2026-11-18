import 'dart:io';

import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const target = 20;
  final csv = StringBuffer()
    ..writeln('Category,Topic,Easy,Medium,Hard,Missing Easy,Missing Medium,Missing Hard,Total Active,Total Missing,Total Surplus');
  final text = StringBuffer()
    ..writeln('TOTAL TRIVIA 20/20/20 INVENTORY')
    ..writeln('Generated: ${DateTime.now().toIso8601String()}')
    ..writeln('Target: $target questions per difficulty per topic')
    ..writeln();

  var topicCount = 0;
  var poolCount = 0;
  var totalQuestions = 0;
  var totalMissing = 0;
  var totalSurplus = 0;
  var completeTopics = 0;
  var emptyPools = 0;

  for (final category in categories) {
    text.writeln('## ${category.title}');
    for (final topic in category.subcategories) {
      topicCount++;
      final counts = <String, int>{};
      for (final level in difficulties) {
        poolCount++;
        final count = QuestionRepository.questionsFor(
          category.title,
          topic,
          level,
        ).length;
        counts[level] = count;
        totalQuestions += count;
        if (count == 0) emptyPools++;
      }

      final easy = counts['Easy'] ?? 0;
      final medium = counts['Medium'] ?? 0;
      final hard = counts['Hard'] ?? 0;
      final missingEasy = easy < target ? target - easy : 0;
      final missingMedium = medium < target ? target - medium : 0;
      final missingHard = hard < target ? target - hard : 0;
      final missing = missingEasy + missingMedium + missingHard;
      final surplus = (easy > target ? easy - target : 0) +
          (medium > target ? medium - target : 0) +
          (hard > target ? hard - target : 0);

      totalMissing += missing;
      totalSurplus += surplus;
      if (missing == 0 && surplus == 0) completeTopics++;

      text.writeln(
        '- $topic: Easy $easy, Medium $medium, Hard $hard | '
        'missing $missing | surplus $surplus',
      );
      csv.writeln([
        _csv(category.title),
        _csv(topic),
        easy,
        medium,
        hard,
        missingEasy,
        missingMedium,
        missingHard,
        easy + medium + hard,
        missing,
        surplus,
      ].join(','));
    }
    text.writeln();
  }

  text
    ..writeln('SUMMARY')
    ..writeln('Categories: ${categories.length}')
    ..writeln('Topics: $topicCount')
    ..writeln('Difficulty pools: $poolCount')
    ..writeln('Active questions served: $totalQuestions')
    ..writeln('Topics already exactly 20/20/20: $completeTopics')
    ..writeln('Questions missing to reach 20/20/20: $totalMissing')
    ..writeln('Questions above the 20-per-pool target: $totalSurplus')
    ..writeln('Empty difficulty pools: $emptyPools')
    ..writeln('Target active questions: ${topicCount * 3 * target}');

  Directory('build').createSync(recursive: true);
  File('build/question_inventory.txt').writeAsStringSync(text.toString());
  File('build/question_inventory.csv').writeAsStringSync(csv.toString());
  stdout.write(text.toString());
  stdout.writeln('Reports saved to build/question_inventory.txt and build/question_inventory.csv');
}

String _csv(String value) => '"${value.replaceAll('"', '""')}"';
