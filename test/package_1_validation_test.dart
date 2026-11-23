import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  const topicsByCategory = <String, List<String>>{
    'Science & Nature': ['General Science & Nature'],
    'Animals': ['General Animals'],
    'Movies': ['Disney'],
    'Books': ['Children', 'Shakespeare'],
    'History': ['Tyrants'],
    'TV': ['The Simpsons', 'Seinfeld', 'Andor', 'Emmys'],
    'Music': ['Name That Tune', 'Finish the Lyrics'],
    'Sports': [
      'NFL Super Bowls',
      'NBA Finals',
      'Green Bay Packers',
      'Dallas Cowboys',
      'Pittsburgh Steelers',
      'Kansas City Chiefs',
      'Boston Celtics',
      'Los Angeles Lakers',
    ],
  };
  const levels = <String>['Easy', 'Medium', 'Hard'];

  group('Package 1 canonical banks', () {
    test('contains 20 topics and 1,200 questions', () {
      expect(topicsByCategory.values.expand((topics) => topics).length, 20);
      var total = 0;
      for (final entry in topicsByCategory.entries) {
        for (final topic in entry.value) {
          for (final level in levels) {
            final questions = QuestionRepository.questionsFor(
              entry.key,
              topic,
              level,
            );
            expect(questions.length, 20,
                reason: '${entry.key} > $topic > $level');
            total += questions.length;
          }
        }
      }
      expect(total, 1200);
    });

    test('prompts are unique within each topic', () {
      for (final entry in topicsByCategory.entries) {
        for (final topic in entry.value) {
          final seen = <String>{};
          for (final level in levels) {
            for (final q in QuestionRepository.questionsFor(
              entry.key,
              topic,
              level,
            )) {
              final normalized = q.question
                  .toLowerCase()
                  .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
                  .trim();
              expect(seen.add(normalized), isTrue,
                  reason: '$topic repeats: ${q.question}');
            }
          }
        }
      }
    });

    test('every question has four distinct choices and a valid answer', () {
      for (final entry in topicsByCategory.entries) {
        for (final topic in entry.value) {
          for (final level in levels) {
            for (final q in QuestionRepository.questionsFor(
              entry.key,
              topic,
              level,
            )) {
              expect(q.answers.length, 4,
                  reason: '${entry.key} > $topic > $level: ${q.question}');
              expect(q.answers.toSet().length, 4,
                  reason: '$topic has repeated answer choices: ${q.question}');
              expect(q.correctAnswer, inInclusiveRange(0, 3));
              expect(q.explanation.trim(), isNotEmpty);
            }
          }
        }
      }
    });
  });
}
