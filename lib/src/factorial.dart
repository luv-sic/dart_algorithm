/// 阶乘
int factorial(n) {
  if (n == 1) return 1;
  var total = 2;
  while (n > 2) {
    total *= n--;
  }
  return total;
}
