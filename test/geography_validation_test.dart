import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'Capitals',
    'Countries',
    'Flags',
    'Landmarks',
    'Mountains',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Canonical Geography bank', () {
    for (final topic in topics) {
      for (final level in levels) {
        test('$topic $level contains exactly 20 questions', () {
          final questions =
              QuestionRepository.questionsFor('Geography', topic, level);
          expect(questions.length, 20);
        });
      }
    }

    test('flag prompts and explanations use the same flag', () {
      final flagPattern = RegExp(
        r'[\u{1F1E6}-\u{1F1FF}]{2}',
        unicode: true,
      );

      for (final level in levels) {
        final questions =
            QuestionRepository.questionsFor('Geography', 'Flags', level);
        for (var i = 0; i < questions.length; i++) {
          final promptFlags = flagPattern
              .allMatches(questions[i].question)
              .map((match) => match.group(0))
              .whereType<String>()
              .toList();
          final explanationFlags = flagPattern
              .allMatches(questions[i].explanation)
              .map((match) => match.group(0))
              .whereType<String>()
              .toList();

          // Medium prompts show a country name while answers contain flags.
          if (level != 'Medium') {
            expect(promptFlags, hasLength(1),
                reason: 'Flags > $level > question ${i + 1} must show one flag.');
            expect(explanationFlags, hasLength(1),
                reason: 'Flags > $level > question ${i + 1} must explain one flag.');
            expect(promptFlags.single, explanationFlags.single,
                reason:
                    'Flags > $level > question ${i + 1} prompt and explanation flags differ.');
          }
        }
      }
    });

    test('each Easy and Hard flag prompt is unique', () {
      for (final level in const ['Easy', 'Hard']) {
        final prompts = QuestionRepository.questionsFor(
          'Geography',
          'Flags',
          level,
        ).map((question) => question.question).toSet();
        expect(prompts.length, 20,
            reason: 'Flags > $level contains repeated prompts.');
      }
    });
  });
}
