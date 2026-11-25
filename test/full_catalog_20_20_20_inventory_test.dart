import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/data/catalog.dart';
import 'package:total_trivia/services/question_repository.dart';

void main() {
  test('full catalog inventory reports every non-canonical pool', () {
    final rows = <String>[];
    var canonicalPools = 0;
    var incompletePools = 0;
    var emptyPools = 0;
    var aboveTargetPools = 0;

    for (final category in categories) {
      for (final topic in category.subcategories) {
        for (final level in difficulties) {
          final count = QuestionRepository.questionsFor(
            category.title,
            topic,
            level,
          ).length;

          if (count == 20) {
            canonicalPools++;
            continue;
          }

          if (count == 0) {
            emptyPools++;
          } else if (count < 20) {
            incompletePools++;
          } else {
            aboveTargetPools++;
          }

          rows.add(
            '${category.title} > $topic > $level: $count '
            '${count == 0
                ? "EMPTY"
                : count < 20
                ? "INCOMPLETE"
                : "ABOVE TARGET"}',
          );
        }
      }
    }

    rows.sort();
    // ignore: avoid_print
    print('\nFULL-CATALOG 20/20/20 INVENTORY');
    // ignore: avoid_print
    print('Canonical pools: $canonicalPools');
    // ignore: avoid_print
    print('Incomplete pools (1-19): $incompletePools');
    // ignore: avoid_print
    print('Empty pools: $emptyPools');
    // ignore: avoid_print
    print('Above-target pools: $aboveTargetPools');
    for (final row in rows) {
      // ignore: avoid_print
      print(row);
    }

    expect(
      rows,
      isEmpty,
      reason:
          'Every active catalog pool must contain exactly 20 questions.\n'
          '${rows.join('\n')}',
    );
  }, tags: 'catalog-completeness');
}
