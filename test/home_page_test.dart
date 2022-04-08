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
}
