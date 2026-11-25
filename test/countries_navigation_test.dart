import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:total_trivia/main.dart';

Future<void> _openCountries(WidgetTester tester) async {
  await tester.pumpWidget(const TotalTriviaApp());
  await tester.pumpAndSettle();

  final countries = find.text('Countries');
  await tester.scrollUntilVisible(
    countries,
    300,
    scrollable: find.byType(Scrollable).first,
  );
  expect(countries, findsOneWidget);
  await tester.tap(countries);
  await tester.pumpAndSettle();
}

void main() {
  testWidgets('Countries groups China and India from the Home menu', (
    tester,
  ) async {
    await _openCountries(tester);

    expect(find.text('Choose a country'), findsOneWidget);
    expect(find.text('China'), findsOneWidget);
    expect(find.text('India'), findsOneWidget);
    expect(find.text('23 provinces'), findsOneWidget);
    expect(find.text('28 states · 8 Union Territories'), findsOneWidget);
  });

  testWidgets('China opens the province submenu', (tester) async {
    await _openCountries(tester);
    await tester.tap(find.text('China'));
    await tester.pumpAndSettle();

    expect(find.text('China Provinces'), findsOneWidget);
    expect(find.text('Anhui'), findsOneWidget);

    final zhejiang = find.text('Zhejiang');
    await tester.scrollUntilVisible(
      zhejiang,
      300,
      scrollable: find.byType(Scrollable).first,
    );
    expect(zhejiang, findsOneWidget);
  });

  testWidgets('India opens states and Union Territories submenus', (
    tester,
  ) async {
    await _openCountries(tester);
    await tester.tap(find.text('India'));
    await tester.pumpAndSettle();

    expect(find.text('28 States'), findsOneWidget);
    expect(find.text('8 Union Territories'), findsOneWidget);
  });
}
