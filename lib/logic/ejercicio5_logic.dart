List<int> encontrarPrimos() {
  List<int> primos = [];
  for (int num = 3; num <= 32767; num++) {
    bool esPrimo = true;
    for (int i = 2; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        esPrimo = false;
        break;
      }
    }
    if (esPrimo) {
      primos.add(num);
    }
  }
  return primos;
}
