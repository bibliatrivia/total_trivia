import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Canonical Bible bank', () {
    test('catalog contains the Protestant 66-book canon', () {
      expect(bibleBooks, hasLength(66));
    });

    for (final book in bibleBooks) {
      for (final level in levels) {
        test('$book $level has exactly 20 questions', () {
          expect(QuestionRepository.questionsFor('Bible', book, level).length, 20);
        });
      }
    }

    test('all Bible questions have valid answer structures', () {
      for (final book in bibleBooks) {
        for (final level in levels) {
          for (final question in QuestionRepository.questionsFor('Bible', book, level)) {
            expect(question.answers.length, 4, reason: '$book > $level: ${question.question}');
            expect(question.answers.toSet().length, 4,
                reason: '$book > $level repeats answer choices: ${question.question}');
            expect(question.correctAnswer, inInclusiveRange(0, 3));
            expect(question.explanation.trim(), isNotEmpty);
          }
        }
      }
    });

    test('prompts are unique within each Bible book', () {
      for (final book in bibleBooks) {
        final seen = <String>{};
        for (final level in levels) {
          for (final question in QuestionRepository.questionsFor('Bible', book, level)) {
            final key = question.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(seen.add(key), isTrue, reason: '$book repeats: ${question.question}');
          }
        }
      }
    });
  });
}
