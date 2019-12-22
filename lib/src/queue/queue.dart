class Queue<T> {
  List<T> items = [];
  void enqueue(T value) {
    items.add(value);
  }

  T dequeue() {
    return items.removeLast();
  }
  @override
  String toString() {
    return items.join('');
  }
}
