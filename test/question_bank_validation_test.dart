import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/models/question.dart';
import 'package:total_trivia/services/question_repository.dart';

String _location(String category, String topic, String level, int index) =>
    '$category > $topic > $level > question ${index + 1}';

// Normalize for duplicate comparisons without stripping Unicode content such as
// flags, accented characters, curly quotes, or other meaningful symbols.
String _normalize(String value) => value
    .toLowerCase()
    .trim()
    .replaceAll(RegExp(r'\s+'), ' ');

Iterable<({String category, String topic, String level, List<Question> questions})>
    _allPools() sync* {
  for (final category in categories) {
    for (final topic in category.subcategories) {
      for (final level in difficulties) {
        yield (
          category: category.title,
          topic: topic,
          level: level,
          questions: QuestionRepository.questionsFor(
            category.title,
            topic,
            level,
          ),
        );
      }
    }
  }
}

void main() {
  group('Total Trivia question-bank validation', () {
    test('every question has valid required fields', () {
      for (final pool in _allPools()) {
        for (var i = 0; i < pool.questions.length; i++) {
          final question = pool.questions[i];
          final where = _location(pool.category, pool.topic, pool.level, i);

          expect(question.question.trim(), isNotEmpty,
              reason: '$where has a blank question.');
          expect(question.answers.length, 4,
              reason: '$where must have exactly four answers.');
          expect(question.correctAnswer, inInclusiveRange(0, 3),
              reason: '$where has an invalid correctAnswer index.');
          expect(question.explanation.trim(), isNotEmpty,
              reason: '$where has a blank explanation.');

          for (var answerIndex = 0;
              answerIndex < question.answers.length;
              answerIndex++) {
            expect(question.answers[answerIndex].trim(), isNotEmpty,
                reason: '$where has a blank answer at index $answerIndex.');
          }

          final normalizedAnswers = question.answers.map(_normalize).toSet();
          expect(normalizedAnswers.length, 4,
              reason: '$where contains duplicate answer choices.');
        }
      }
    });

    test('no question text contains common mojibake markers', () {
      const suspicious = <String>['â€™', 'â€œ', 'â€', 'Ã', '�'];

      for (final pool in _allPools()) {
        for (var i = 0; i < pool.questions.length; i++) {
          final question = pool.questions[i];
          final where = _location(pool.category, pool.topic, pool.level, i);
          final combined = <String>[
            question.question,
            ...question.answers,
            question.explanation,
          ].join(' ');

          for (final marker in suspicious) {
            expect(combined.contains(marker), isFalse,
                reason: '$where contains suspicious encoding: $marker');
          }
        }
      }
    });

    test('repository enumerates every catalog level safely', () {
      for (final pool in _allPools()) {
        expect(pool.questions.length, greaterThanOrEqualTo(0),
            reason:
                '${pool.category} > ${pool.topic} > ${pool.level} could not be enumerated.');
      }
    });
  });
}
