import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/question_banks/package_1_checkpoint_1_questions.dart';
import 'package:total_trivia/data/question_banks/package_1_checkpoint_2_questions.dart';
import 'package:total_trivia/data/question_banks/package_1_checkpoint_3_questions.dart';
import 'package:total_trivia/data/question_banks/package_1_checkpoint_4_questions.dart';
import 'package:total_trivia/models/question.dart';

String _normalize(String value) => value
    .toLowerCase()
    .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
    .trim();

Iterable<MapEntry<String, Question>> _flatten(
  Map<String, Map<String, Map<String, List<Question>>>> bank,
) sync* {
  for (final category in bank.entries) {
    for (final topic in category.value.entries) {
      for (final level in topic.value.entries) {
        for (final question in level.value) {
          yield MapEntry(
            '${category.key} > ${topic.key} > ${level.key}',
            question,
          );
        }
      }
    }
  }
}

void main() {
  final all = <MapEntry<String, Question>>[
    ..._flatten(package1Checkpoint1QuestionBanks),
    ..._flatten(package1Checkpoint2QuestionBanks),
    ..._flatten(package1Checkpoint3QuestionBanks),
    ..._flatten(package1Checkpoint4QuestionBanks),
  ];

  test('Package 1 contains exactly 1,200 questions', () {
    expect(all, hasLength(1200));
  });

  test('Every question has four distinct options and one valid answer', () {
    for (final item in all) {
      final question = item.value;
      expect(
        question.answers,
        hasLength(4),
        reason: '${item.key}: ${question.question}',
      );
      expect(
        question.answers.map(_normalize).toSet(),
        hasLength(4),
        reason: '${item.key}: duplicate answer option in ${question.question}',
      );
      expect(
        question.correctAnswer,
        inInclusiveRange(0, 3),
        reason: '${item.key}: invalid correctAnswer in ${question.question}',
      );
      expect(
        question.question.trim(),
        isNotEmpty,
        reason: item.key,
      );
      expect(
        question.explanation.trim(),
        isNotEmpty,
        reason: '${item.key}: ${question.question}',
      );
    }
  });

  test('Package 1 has no exact normalized prompt duplicates', () {
    final firstSeen = <String, MapEntry<String, Question>>{};
    final duplicates = <String>[];

    for (final item in all) {
      final key = _normalize(item.value.question);
      final previous = firstSeen[key];
      if (previous == null) {
        firstSeen[key] = item;
      } else {
        duplicates.add(
          '${previous.key} / ${item.key}: "${item.value.question}"',
        );
      }
    }

    expect(
      duplicates,
      isEmpty,
      reason: 'Exact duplicate prompts:\n${duplicates.join('\n')}',
    );
  });

  test('Correct-answer positions are not excessively concentrated', () {
    final positions = List<int>.filled(4, 0);
    for (final item in all) {
      positions[item.value.correctAnswer]++;
    }

    // A quality guardrail, not a demand for perfectly equal distribution.
    for (var index = 0; index < positions.length; index++) {
      expect(
        positions[index],
        inInclusiveRange(180, 420),
        reason: 'Answer index $index distribution: $positions',
      );
    }
  });
}
