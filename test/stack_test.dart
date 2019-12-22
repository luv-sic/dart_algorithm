import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('Stack tests', () {
    Stack stack;

    setUp(() {
      stack = Stack();
    });

    test('push', () {
      stack.push(1);
      stack.push(2);
      expect(stack.toString(), '12');
    });

    test('shift', () {
      stack.push(1);
      stack.push(2);
      stack.push(3);
      stack.shift();
      expect(stack.toString(), '23');
    });
  });
}
