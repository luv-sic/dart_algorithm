class Node<T> {
  T value;
  Node next;
  Node(this.value, [this.next]);
}

/// 单链表
class LinkList<T> {
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
    while(current != null) {
      next = current.next;
      current.next = prev;
      prev = current;
      current = next;
    }
    head = prev;
    return this;
  }
}
