import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('Queue tests', () {
    Queue queue;

    setUp(() {
      queue = Queue();
    });

    test('enqueue', () {
      queue.enqueue(1);
      queue.enqueue(2);
      expect(queue.toString(), '12');
    });

    test('dequeue', () {
      queue.enqueue(1);
      queue.enqueue(2);
      queue.enqueue(3);
      queue.dequeue();
      expect(queue.toString(), '12');
    });
  });
}
