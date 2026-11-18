import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  final films = harryPotterMovies.skip(4).toList(growable: false);
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Harry Potter Movies 5-8 canonical banks', () {
    for (final film in films) {
      for (final level in levels) {
        test('$film $level contains exactly 20 questions', () {
          expect(
            QuestionRepository.questionsFor('Movies', film, level).length,
            20,
          );
        });
      }
    }

    test('prompts are unique within each film across difficulty levels', () {
      for (final film in films) {
        final seen = <String>{};
        for (final level in levels) {
          for (final q
              in QuestionRepository.questionsFor('Movies', film, level)) {
            final normalized = q.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(
              seen.add(normalized),
              isTrue,
              reason: '$film repeats: ${q.question}',
            );
          }
        }
      }
    });

    test('all questions have four distinct choices and valid answers', () {
      for (final film in films) {
        for (final level in levels) {
          for (final q
              in QuestionRepository.questionsFor('Movies', film, level)) {
            expect(q.answers.length, 4,
                reason: '$film > $level: ${q.question}');
            expect(q.answers.toSet().length, 4,
                reason: '$film > $level repeats answer choices: ${q.question}');
            expect(q.correctAnswer, inInclusiveRange(0, 3));
            expect(q.explanation.trim(), isNotEmpty);
          }
        }
      }
    });

    test('Films 1-4 remain canonical and reachable', () {
      for (final film in harryPotterMovies.take(4)) {
        for (final level in levels) {
          expect(
            QuestionRepository.questionsFor('Movies', film, level).length,
            20,
            reason: '$film > $level changed unexpectedly.',
          );
        }
      }
    });
  });
}
