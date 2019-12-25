List<T> mergeSort<T>(List array) {}

List<int> quickSort(List<int> array) {
  if (array.length <= 1) return array;
  List<int> left = [];
  List<int> right = [];
  var pivot = array.removeLast();
  List<int> middle = [pivot];
  while (array.isNotEmpty) {
    var current = array.removeLast();
    if (current < pivot) {
      left.add(current);
    } else if (current == pivot) {
      middle.add(current);
    } else {
      right.add(current);
    }
  }
  return [...quickSort(left), ...middle, ...quickSort(right)];
}
