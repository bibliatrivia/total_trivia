import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  group('Nested Harry Potter navigation data', () {
    test('Movies carries all eight Harry Potter film leaves', () {
      final movies = categories.firstWhere((c) => c.title == 'Movies');
      expect(harryPotterMovies, hasLength(8));
      expect(movies.subcategories, containsAll(harryPotterMovies));
    });

    test('Books carries all seven Harry Potter book leaves', () {
      final books = categories.firstWhere((c) => c.title == 'Books');
      expect(harryPotterBooks, hasLength(7));
      expect(books.subcategories, containsAll(harryPotterBooks));
    });

    test('film questions remain reachable through Movies', () {
      for (final film in harryPotterMovies) {
        expect(
          QuestionRepository.questionsFor('Movies', film, 'Easy'),
          isNotEmpty,
          reason: '$film lost its existing Easy questions.',
        );
      }
    });

    test('book questions remain reachable through Books', () {
      for (final book in harryPotterBooks) {
        expect(
          QuestionRepository.questionsFor('Books', book, 'Easy'),
          isNotEmpty,
          reason: '$book lost its existing Easy questions.',
        );
      }
    });
  });
}
