List<Map<String, dynamic>> generateAsciiTable() {
  List<Map<String, dynamic>> asciiList = [];
  for (int n = 0; n <= 255; n++) {
    asciiList.add({'number': n, 'char': String.fromCharCode(n)});
  }
  return asciiList;
}
