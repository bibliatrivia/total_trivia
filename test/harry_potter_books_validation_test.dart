import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('All seven Harry Potter Books canonical banks', () {
    test('catalog contains seven Harry Potter books', () {
      expect(harryPotterBooks, hasLength(7));
    });

    for (final book in harryPotterBooks) {
      for (final level in levels) {
        test('$book $level contains exactly 20 questions', () {
          expect(
            QuestionRepository.questionsFor('Books', book, level).length,
            20,
          );
        });
      }
    }

    test('prompts are unique within each book across difficulty levels', () {
      for (final book in harryPotterBooks) {
        final seen = <String>{};
        for (final level in levels) {
          for (final q in QuestionRepository.questionsFor('Books', book, level)) {
            final normalized = q.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(seen.add(normalized), isTrue,
                reason: '$book repeats: ${q.question}');
          }
        }
      }
    });

    test('all Harry Potter book questions have valid answer structures', () {
      for (final book in harryPotterBooks) {
        for (final level in levels) {
          for (final q in QuestionRepository.questionsFor('Books', book, level)) {
            expect(q.answers.length, 4,
                reason: '$book > $level: ${q.question}');
            expect(q.answers.toSet().length, 4,
                reason: '$book > $level has repeated answer choices: ${q.question}');
            expect(q.correctAnswer, inInclusiveRange(0, 3));
            expect(q.explanation.trim(), isNotEmpty);
          }
        }
      }
    });

    test('Books Core remains 20/20/20', () {
      for (final topic in const [
        'Classic Literature',
        'Fiction',
        'Non-Fiction',
        'Franchises',
        'What Book Am I?',
      ]) {
        for (final level in levels) {
          expect(
            QuestionRepository.questionsFor('Books', topic, level).length,
            20,
            reason: '$topic > $level changed unexpectedly.',
          );
        }
      }
    });
  });
}
