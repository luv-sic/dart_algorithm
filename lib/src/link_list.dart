class Node<T> {
  T value;
  Node next;
  Node(this.value, [this.next]);
}

/// 单链表
class LinkList<T extends int> {
  Node<T> head;
  LinkList([T value]) {
    if (value != null) {
      head = Node(value);
    }
  }
  void add(T value) {
    var node = Node(value);
    if (head == null) {
      head = node;
      return;
    }
    var current = head;
    while (current.next != null) {
      current = current.next;
    }
    current.next = node;
  }

  void delete(T value) {
    // 无节点
    if (head == null) return;
    // 只有一个节点
    if (head != null && head.next == null) {
      head = null;
      return;
    }
    // 多个节点
    var current = head;
    while (current.next != null) {
      if (current.next.value == value) {
        current.next = current.next.next;
        break;
      }
      current = current.next;
    }
  }

  /// 链表反转
  LinkList<T> reverse() {
    // 无节点
    if (head == null) return this;
    // 只有一个节点
    if (head != null && head.next == null) {
      return this;
    }
    Node current = head;
    Node prev;
    Node next;
    while (current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
    return this;
  }

  /// 获取中间节点
  T middle() {
    var slow = head;
    var fast = head;
    while (fast != null && fast.next != null) {
      slow = slow.next;
      fast = fast.next.next;
    }
    return slow.value;
  }

  /// 两个有序的链表合并为一个有序链表
  LinkList<T> concat(LinkList<T> list) {
    var result = LinkList();
    var head1 = head;
    var head2 = list.head;
    while (head1 != null && head2 != null) {
      if (head1.value < head2.value) {
        result.add(head1.value);
        head1 = head1.next;
      } else {
        result.add(head2.value);
        head2 = head2.next;
      }
    }
    while (head1 != null) {
      result.add(head1.value);
      head1 = head1.next;
    }
    while (head2 != null) {
      result.add(head2.value);
      head2 = head2.next;
    }
    return result;
  }

  List<T> toArray() {
    List<T> array = [];
    while (head != null) {
      array.add(head.value);
      head = head.next;
    }
    return array;
  }

  @override
  String toString() {
    return toArray().join('');
  }
}
