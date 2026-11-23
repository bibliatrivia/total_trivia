import '../data/catalog.dart';
import '../services/question_repository.dart';

class LevelProgress {
  final int best;
  final int attempts;
  final int perfects;

  const LevelProgress({
    required this.best,
    required this.attempts,
    required this.perfects,
  });
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

  int get attempts => levels.fold(0, (sum, record) => sum + record.attempts);
  int get perfects => levels.fold(0, (sum, record) => sum + record.perfects);

  int get topicsPlayed => records.values
      .expand((topics) => topics.values)
      .where((levels) => levels.values.any((record) => record.attempts > 0))
      .length;

  int get categoriesPlayed => records.values
      .where(
        (topics) => topics.values.any(
          (levels) => levels.values.any((record) => record.attempts > 0),
        ),
      )
      .length;

  int get levelsPlayed => levels.where((record) => record.attempts > 0).length;

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
      if (_isPlayable(category, topic, level)) {
        playableLevels++;
      }
    }
    return playableLevels * 10;
  }

  double get fraction => maxPoints == 0 ? 0 : points / maxPoints;
}
