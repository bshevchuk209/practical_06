import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:practical_06/main.dart';

void main() {
  testWidgets('All authentication screens and back navigation', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byKey(const ValueKey('email')), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('signup')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('name')), findsOneWidget);
    await tester.tap(find.text('Назад до входу'));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(const ValueKey('reset')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('password')), findsNothing);
    await tester.tap(find.text('Назад до входу'));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('password')), findsOneWidget);
  });
}
