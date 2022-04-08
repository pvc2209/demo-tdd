import 'package:demo_tdd/models/counter.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("Test Counter class", () {
    test("Test giá trị ban đầu", () {
      final counter = Counter();

      expect(counter.count, 0);
    });

    test("Test hàm tăng giá trị", () {
      final counter = Counter();

      for (int i = 1; i <= 100; ++i) {
        counter.increment();
        expect(counter.count, i);
      }
    });

    test("Test hàm giảm giá trị", () {
      final counter = Counter();

      counter.decrement();
      expect(counter.count, -1);
    });
  });
}
