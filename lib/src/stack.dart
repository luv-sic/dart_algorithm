class Stack<T> {
  List<T> items = [];
  void push(T value) {
    items.add(value);
  }

  T shift() {
    return items.removeAt(0);
  }

  @override
  String toString() {
    return items.join('');
  }
}
