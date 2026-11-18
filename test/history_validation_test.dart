import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'US History',
    'World History',
    'War',
    'Presidents',
    'The Constitution',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Canonical History bank', () {
    for (final topic in topics) {
      for (final level in levels) {
        test('$topic $level contains exactly 20 questions', () {
          final questions =
              QuestionRepository.questionsFor('History', topic, level);
          expect(questions.length, 20);
        });
      }
    }

    test('History prompts are unique within each topic', () {
      for (final topic in topics) {
        final prompts = <String>{};
        for (final level in levels) {
          for (final question
              in QuestionRepository.questionsFor('History', topic, level)) {
            final normalized = question.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(prompts.add(normalized), isTrue,
                reason: '$topic repeats: ${question.question}');
          }
        }
      }
    });
  });
}
