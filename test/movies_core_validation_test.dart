import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'Actors',
    'Oscars',
    'Action',
    'Drama',
    'Comedies',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Canonical Movies Core bank', () {
    for (final topic in topics) {
      for (final level in levels) {
        test('$topic $level contains exactly 20 questions', () {
          expect(
            QuestionRepository.questionsFor('Movies', topic, level).length,
            20,
          );
        });
      }
    }

    test('prompts are unique within each core movie topic', () {
      for (final topic in topics) {
        final prompts = <String>{};
        for (final level in levels) {
          for (final question
              in QuestionRepository.questionsFor('Movies', topic, level)) {
            final normalized = question.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(
              prompts.add(normalized),
              isTrue,
              reason: '$topic repeats: ${question.question}',
            );
          }
        }
      }
    });
  });
}
