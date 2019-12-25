import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('sort tests', () {
    test('quickSort', () {
      expect(quickSort([3]), [3]);
      expect(quickSort([]), []);
      expect(quickSort([4, 6, 5, 2, 1, 3]), [1, 2, 3, 4, 5, 6]);
    });
  });
}
