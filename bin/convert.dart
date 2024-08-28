void main() {
  print(binarInsDezimal('1000011'));
  print(binarInsHexadezimal('11111111'));
  print(dezimalInsBinar(67));
  print(dezimalInsHexadezimal(450));
  print(hexadezimalInsBinar('1FF'));
  print(hexadezimalInsDezimal('1FF'));
}

int binarInsDezimal(String binary) {
  final decimal = int.parse(binary, radix: 2);
  return decimal;
}

String binarInsHexadezimal(String binary) {
  final decimal = int.parse(binary, radix: 2);
  final hex = decimal.toRadixString(16);
  return hex;
}

String dezimalInsBinar(int decimal) {
  final binary = decimal.toRadixString(2);
  return binary;
}

String dezimalInsHexadezimal(int decimal) {
  final hex = decimal.toRadixString(16);
  return hex;
}

String hexadezimalInsBinar(String hex) {
  final decimal = int.parse(hex, radix: 16);
  final binary = decimal.toRadixString(2);
  return binary;
}

String hexadezimalInsDezimal(String hex) {
  final decimal = int.parse(hex, radix: 16);
  return decimal.toString();
}
