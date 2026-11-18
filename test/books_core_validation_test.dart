import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'Classic Literature',
    'Fiction',
    'Non-Fiction',
    'Franchises',
    'What Book Am I?',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Books Core canonical banks', () {
    for (final topic in topics) {
      for (final level in levels) {
        test('$topic $level contains exactly 20 questions', () {
          expect(
            QuestionRepository.questionsFor('Books', topic, level).length,
            20,
          );
        });
      }
    }

    test('prompts are unique within each Books Core topic', () {
      for (final topic in topics) {
        final seen = <String>{};
        for (final level in levels) {
          for (final q in QuestionRepository.questionsFor('Books', topic, level)) {
            final normalized = q.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(seen.add(normalized), isTrue,
                reason: '$topic repeats: ${q.question}');
          }
        }
      }
    });

    test('all Books Core questions have four distinct choices', () {
      for (final topic in topics) {
        for (final level in levels) {
          for (final q in QuestionRepository.questionsFor('Books', topic, level)) {
            expect(q.answers.length, 4,
                reason: '$topic > $level: ${q.question}');
            expect(q.answers.toSet().length, 4,
                reason: '$topic > $level has repeated answer choices.');
            expect(q.correctAnswer, inInclusiveRange(0, 3));
            expect(q.explanation.trim(), isNotEmpty);
          }
        }
      }
    });

    test('all seven Harry Potter books remain reachable', () {
      for (final book in harryPotterBooks) {
        expect(QuestionRepository.questionsFor('Books', book, 'Easy'), isNotEmpty,
            reason: '$book lost its existing Easy questions.');
      }
    });
  });
}
