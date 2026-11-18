import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'Romance',
    'RomComs',
    'Musicals',
    'Disney',
    'Marvel',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Movies Genres & Studios bank', () {
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

    test('prompts are unique within each topic across all levels', () {
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

    test('every Genres & Studios question has four distinct choices', () {
      for (final topic in topics) {
        for (final level in levels) {
          for (final question
              in QuestionRepository.questionsFor('Movies', topic, level)) {
            expect(question.answers.length, 4,
                reason: '$topic > $level: ${question.question}');
            expect(question.answers.toSet().length, 4,
                reason: '$topic > $level has repeated answer choices.');
            expect(question.correctAnswer, inInclusiveRange(0, 3));
            expect(question.explanation.trim(), isNotEmpty);
          }
        }
      }
    });
  });
}
