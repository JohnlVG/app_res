import 'dart:math';

BigInt calcularFactorial(int n) {
  BigInt factorial = BigInt.one;
  for (int i = 1; i <= n; i++) {
    factorial *= BigInt.from(i);
  }
  return factorial;
}
