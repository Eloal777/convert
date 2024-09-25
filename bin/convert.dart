void main() {
  // print(binarInsDezimal('1000011'));
  // print(binarInsHexadezimal('11111111'));
  // print(dezimalInsBinar(67));
  // print(dezimalInsHexadezimal(450));
  // print(hexadezimalInsBinar('1FF'));
  // print(hexadezimalInsDezimal('1FF'));
  print(dezimalInBinaerMensch(255));
  print(binaerInDezimalMensch('10101001010'));
}

//KI
int binarInsDezimal(String binary) {
  final decimal = int.parse(binary, radix: 2);
  return decimal;
}

//KI
int binaerInDezimalMensch(String binaer) {
  int ergebnis = 0;
  int multiplikator = 1; // Startet bei 2^0 = 1

  for (int i = binaer.length - 1; i >= 0; i--) {
    if (binaer[i] == '1') {
      ergebnis += multiplikator; // Füge die aktuelle Potenz von 2 hinzu
    }
    multiplikator *= 2; // Erhöhe die Potenz von 2 bei jedem Schritt
  }

  return ergebnis;
}

//KI
int binaerInHexadezimalMensch(String binaer) {
  int ergebnis = 0;
  int multiplikator = 1; // Startet bei 2^0 = 1

  for (int i = binaer.length - 1; i >= 0; i--) {
    if (binaer[i] == '1') {
      ergebnis += multiplikator; // Füge die aktuelle Potenz von 2 hinzu
    }
    multiplikator *= 2; // Erhöhe die Potenz von 2 bei jedem Schritt
  }

  return ergebnis;
}

//KI
String dezimalInBinaerMensch(int zahl) {
  String ergebnis = '';
  while (zahl > 0) {
    if (zahl % 2 == 0) {
      ergebnis = '0' + ergebnis; // 0 wird vorne hinzugefügt
    } else {
      ergebnis = '1' + ergebnis; // 1 wird vorne hinzugefügt
    }
    zahl = zahl ~/ 2; // Zahl wird durch 2 geteilt
  }
  return ergebnis.isEmpty
      ? '0'
      : ergebnis; // Rückgabe '0' wenn zahl ursprünglich 0 war
}

//KI
String binaerInHexadezimal(String binaer) {
  Map<String, String> binaerZuHexMap = {
    '0000': '0',
    '0001': '1',
    '0010': '2',
    '0011': '3',
    '0100': '4',
    '0101': '5',
    '0110': '6',
    '0111': '7',
    '1000': '8',
    '1001': '9',
    '1010': 'A',
    '1011': 'B',
    '1100': 'C',
    '1101': 'D',
    '1110': 'E',
    '1111': 'F'
  };

  // Füge führende Nullen hinzu, sodass die Länge ein Vielfaches von 4 ist
  while (binaer.length % 4 != 0) {
    binaer = '0' + binaer;
  }

  String ergebnis = '';
  for (int i = 0; i < binaer.length; i += 4) {
    String vierBits = binaer.substring(i, i + 4);
    ergebnis += binaerZuHexMap[vierBits]!;
  }

  return ergebnis;
}

//KI
String dezimalInHexadezimal(int zahl) {
  String hexZeichen = '0123456789ABCDEF';
  String ergebnis = '';

  if (zahl == 0) {
    return '0';
  }

  while (zahl > 0) {
    int rest = zahl % 16;
    ergebnis =
        hexZeichen[rest] + ergebnis; // Füge das entsprechende Zeichen hinzu
    zahl = zahl ~/ 16; // Teile die Zahl durch 16
  }

  return ergebnis;
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
