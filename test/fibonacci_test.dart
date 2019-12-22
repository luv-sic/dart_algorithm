import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('Queue tests', () {
    test('fibonacci', () {
      expect(fibonacci(2), [0, 1]);
      expect(fibonacci(3), [0, 1, 1]);
      expect(fibonacci(13), [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144]);
    });
  });
}
