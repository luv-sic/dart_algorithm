import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('LRU tests', () {
    var lru = LRU(5);
    test('LRU', () {
      expect(lru.cache, {});
      expect(lru.limit, 5);
      expect(lru.keys, []);

      lru.put('1', 1);
      lru.put('2', 2);
      lru.put('3', 3);
      lru.put('4', 4);
      lru.put('5', 5);
      expect(lru.get('1'), 1);
      expect(lru.get('3'), 3);
      expect(lru.get('5'), 5);

      lru.put('6', 6);
      expect(lru.get('5'), null);
      expect(lru.get('6'), 6);
    });
  });
}
