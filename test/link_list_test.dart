import 'package:dart_algorithm/dart_algorithm.dart';
import 'package:test/test.dart';

void main() {
  group('LinkList tests', () {
    LinkList list;

    setUp(() {
      list = LinkList();
      list.add(1);
      list.add(2);
      list.add(3);
    });

    test('Init', () {
      expect(list.head.value, 1);
    });

    test('Add', () {
      list.add(4);
      expect(list.toString(), '1234');
    });

    test('Delete', () {
      list.delete(3);
      expect(list.toString(), '12');
    });

    test('Reverse', () {
      list.reverse();
      expect(list.toString(), '321');
    });

    test('Middle', () {
      expect(list.middle(), 2);
    });

    test('Concat', () {
      var list2 = LinkList();
      list2.add(4);
      list2.add(5);
      var list3 = list.concat(list2);
      expect(list3.toString(), '12345');
    });
  });
}
