import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('binary tests', () {
    test('binary', () {
      expect(binary([1], 2), -1);
      expect(binary([], 2), -1);
      expect(binary([1, 2, 3, 4, 5], 4), 3);
    });
  });
}
