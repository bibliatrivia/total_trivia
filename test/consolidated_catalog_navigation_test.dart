import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';

void main() {
  group('Consolidated catalog and navigation data', () {
    test('new top-level categories exist once', () {
      final titles = categories.map((category) => category.title).toList();
      for (final title in const ['Animals', 'China', 'Science & Nature', 'TV']) {
        expect(titles.where((value) => value == title), hasLength(1));
      }
    });

    test('NFL structure contains Super Bowls and 32 unique teams', () {
      expect(nflTeams, hasLength(32));
      expect(nflTeams.toSet(), hasLength(32));
      expect(nflTopics, hasLength(33));
      expect(nflTopics.first, 'NFL Super Bowls');
    });

    test('NBA structure contains Finals and 30 unique teams', () {
      expect(nbaTeams, hasLength(30));
      expect(nbaTeams.toSet(), hasLength(30));
      expect(nbaTopics, hasLength(31));
      expect(nbaTopics.first, 'NBA Finals');
    });

    test('China structure contains 23 unique provinces', () {
      expect(chinaProvinces, hasLength(23));
      expect(chinaProvinces.toSet(), hasLength(23));
    });

    test('requested leaf topics appear once', () {
      final byCategory = {
        for (final category in categories)
          category.title: category.subcategories,
      };
      final requested = <String, List<String>>{
        'Music': ['Finish the Lyrics', 'Name That Tune'],
        'TV': ['The Simpsons', 'Seinfeld', 'Emmys', 'Andor'],
        'History': ['Tyrants'],
        'Movies': ['Disney'],
        'Books': ['Children', 'Shakespeare'],
        'Animals': ['General Animals'],
        'Science & Nature': ['General Science & Nature'],
      };
      for (final entry in requested.entries) {
        for (final topic in entry.value) {
          expect(
            byCategory[entry.key]!.where((value) => value == topic),
            hasLength(1),
            reason: '${entry.key} must contain $topic exactly once.',
          );
        }
      }
    });

    test('all category leaf lists contain unique topic names', () {
      for (final category in categories) {
        expect(category.subcategories.toSet().length,
            category.subcategories.length,
            reason: '${category.title} contains duplicate topic names.');
      }
    });
  });
}
