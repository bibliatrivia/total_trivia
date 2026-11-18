import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topics = <String>[
    'Christmas Nativity',
    'Christmas Carols',
    'Christmas Movies',
    'Christmas Songs',
    'Christmas',
    'Easter',
    'Thanksgiving',
    'Fourth of July',
  ];
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Canonical Holidays bank', () {
    for (final topic in topics) {
      for (final level in levels) {
        test('$topic $level contains exactly 20 questions', () {
          expect(
            QuestionRepository.questionsFor('Holidays', topic, level).length,
            20,
          );
        });
      }
    }

    test('holiday prompts are unique within each topic', () {
      for (final topic in topics) {
        final prompts = <String>{};
        for (final level in levels) {
          for (final q in QuestionRepository.questionsFor('Holidays', topic, level)) {
            final n = q.question
                .toLowerCase()
                .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                .trim();
            expect(prompts.add(n), isTrue,
                reason: '$topic repeats: ${q.question}');
          }
        }
      }
    });
  });
}
