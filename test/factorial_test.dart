import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('factorial tests', () {
    test('factorial', () {
      expect(factorial(2), 2);
      expect(factorial(3), 6);
      expect(factorial(6), 720);
    });
  });
}
