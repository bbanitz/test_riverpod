// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_riverpod/main.dart';

final counterProvider = StateProvider((ref) => 0);

void main() {
  testWidgets('widgets test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ProviderScope(child: MyApp()));
    // Verify that our counter starts at 0.
    expect(find.text('counter : stopped'), findsOneWidget);
    // Tap the 'start button' icon and trigger a frame.
    await tester.tap(find.byType(ElevatedButton).first);
    await tester.pump();
    expect(find.text('counter : started'), findsOneWidget);
    // Tap the 'stop button' icon and trigger a frame.
    await tester.tap(find.byType(ElevatedButton).at(1));
    await tester.pump();
    expect(find.text('counter : stopped'), findsOneWidget);
    // Tap the 'stop button' icon and trigger a frame.
    await tester.tap(find.byType(ElevatedButton).at(2));
    await tester.pump();
    expect(find.text('Count : 0'), findsOneWidget);
  });
}
