import 'package:flutter_test/flutter_test.dart';

import 'package:demo_tdd/main.dart';

void main() {
  group("Test UI", () {
    testWidgets("Test title", (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text("Counter App"), findsOneWidget);
    });

    testWidgets("Test hiển thị counter", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.text("0"), findsOneWidget);
    });

    testWidgets("Test hiển thị button + và -", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.text("+"), findsOneWidget);
      expect(find.text("-"), findsOneWidget);
    });
  });

  group("Test UI kết hợp logic", () {
    testWidgets("Test bấm button trừ 1 lần", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.text("-"));
      await tester.pump();

      expect(find.text("-1"), findsOneWidget);
    });

    testWidgets("Test bấm button trừ 2 lần", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.text("-"));
      await tester.pump();

      await tester.tap(find.text("-"));
      await tester.pump();

      expect(find.text("-2"), findsOneWidget);
    });

    testWidgets("Test bấm button cộng 1 lần", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.text("+"));
      await tester.pump();

      expect(find.text("1"), findsOneWidget);
    });

    testWidgets("Test bấm button cộng 2 lần", (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      await tester.tap(find.text("+"));
      await tester.pump();

      await tester.tap(find.text("+"));
      await tester.pump();

      expect(find.text("2"), findsOneWidget);
    });
  });
}
