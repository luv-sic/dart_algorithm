int binary(List<int> array, int target) {
  if (array.isEmpty) return -1;
  var low = 0;
  var high = array.length - 1;
  while (low < high) {
    var mid = low + ((high - low) / 2).ceil();
    var middle = array[mid];
    if (middle == target) {
      return mid;
    }
    if (target < middle) {
      high = mid;
    } else {
      low = mid;
    }
  }
  return -1;
}
