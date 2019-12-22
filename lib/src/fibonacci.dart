/// 斐波那契
List<int> fibonacci(n) {
  var array = [0, 1];
  var i = 2;
  while (i < n) {
    array.add(array[i - 1] + array[i - 2]);
    i++;
  }
  return array;
}
