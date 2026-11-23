import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/models/question.dart';
import 'package:total_trivia/services/question_repository.dart';

typedef QuestionPool = ({
  String category,
  String topic,
  String level,
  List<Question> questions,
});

String _location(String category, String topic, String level, int index) =>
    '$category > $topic > $level > question ${index + 1}';

String _poolLocation(QuestionPool pool) =>
    '${pool.category} > ${pool.topic} > ${pool.level}';

String _normalize(String value) => value
    .toLowerCase()
    .trim()
    .replaceAll(RegExp(r'[\u2018\u2019\u201B\u2032]'), "'")
    .replaceAll(RegExp(r'[\u201C\u201D\u201F\u2033]'), '"')
    .replaceAll(RegExp(r'[^\p{L}\p{N}\p{S}]+', unicode: true), ' ')
    .trim()
    .replaceAll(RegExp(r'\s+'), ' ');

Iterable<QuestionPool> _allPools() sync* {
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

String _countStatus(int count) {
  if (count == 0) return 'empty';
  if (count < 10) return 'incomplete';
  if (count < 20) return 'playable-needs-expansion';
  if (count == 20) return 'canonical';
  return 'above-target';
}

void main() {
  group('Total Trivia universal question-bank validation', () {
    test('catalog categories and topic names are unique', () {
      final categoryNames = categories.map((category) => category.title).toList();
      expect(
        categoryNames.toSet().length,
        categoryNames.length,
        reason: 'The catalog contains duplicate category names.',
      );

      for (final category in categories) {
        expect(
          category.title.trim(),
          isNotEmpty,
          reason: 'The catalog contains a category with a blank title.',
        );
        expect(
          category.subcategories.toSet().length,
          category.subcategories.length,
          reason: '${category.title} contains duplicate topic names.',
        );
        for (final topic in category.subcategories) {
          expect(
            topic.trim(),
            isNotEmpty,
            reason: '${category.title} contains a blank topic name.',
          );
        }
      }
    });

    test('difficulty definitions are exactly Easy, Medium, and Hard', () {
      expect(difficulties, const <String>['Easy', 'Medium', 'Hard']);
    });

    test('every catalog pool can be resolved and enumerated safely', () {
      for (final pool in _allPools()) {
        expect(
          pool.questions,
          isA<List<Question>>(),
          reason: '${_poolLocation(pool)} could not be resolved.',
        );
      }
    });

    test('every question has valid required fields', () {
      for (final pool in _allPools()) {
        for (var i = 0; i < pool.questions.length; i++) {
          final question = pool.questions[i];
          final where = _location(pool.category, pool.topic, pool.level, i);

          expect(
            question.question.trim(),
            isNotEmpty,
            reason: '$where has a blank question.',
          );
          expect(
            question.answers.length,
            4,
            reason: '$where must have exactly four answers.',
          );
          expect(
            question.correctAnswer,
            inInclusiveRange(0, 3),
            reason: '$where has an invalid correctAnswer index.',
          );
          expect(
            question.explanation.trim(),
            isNotEmpty,
            reason: '$where has a blank explanation.',
          );

          for (var answerIndex = 0;
              answerIndex < question.answers.length;
              answerIndex++) {
            expect(
              question.answers[answerIndex].trim(),
              isNotEmpty,
              reason: '$where has a blank answer at index $answerIndex.',
            );
          }

          expect(
            question.answers.map(_normalize).toSet().length,
            4,
            reason: '$where contains duplicate answer choices: '
                '${question.answers.join(' | ')}',
          );
        }
      }
    });

    test('prompts are unique within each topic across difficulty levels', () {
      for (final category in categories) {
        for (final topic in category.subcategories) {
          final seen = <String, String>{};

          for (final level in difficulties) {
            final questions = QuestionRepository.questionsFor(
              category.title,
              topic,
              level,
            );

            for (var i = 0; i < questions.length; i++) {
              final question = questions[i];
              final normalized = _normalize(question.question);
              final current = _location(category.title, topic, level, i);
              final previous = seen[normalized];

              expect(
                previous,
                isNull,
                reason: '$current duplicates a prompt already used at $previous: '
                    '${question.question}',
              );
              seen[normalized] = current;
            }
          }
        }
      }
    });

    test('question text contains no common mojibake markers', () {
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
            expect(
              combined.contains(marker),
              isFalse,
              reason: '$where contains suspicious encoding: $marker',
            );
          }
        }
      }
    });

    test('pool counts use recognized migration states', () {
      for (final pool in _allPools()) {
        final status = _countStatus(pool.questions.length);
        expect(
          const <String>{
            'empty',
            'incomplete',
            'playable-needs-expansion',
            'canonical',
            'above-target',
          },
          contains(status),
          reason: '${_poolLocation(pool)} has an unrecognized status.',
        );
      }
    });

    test('playable pools contain at least 10 questions', () {
      for (final pool in _allPools()) {
        final count = pool.questions.length;
        final status = _countStatus(count);
        if (status == 'playable-needs-expansion' || status == 'canonical') {
          expect(
            count,
            greaterThanOrEqualTo(10),
            reason: '${_poolLocation(pool)} is marked playable with only '
                '$count questions.',
          );
        }
      }
    });
  });
}
