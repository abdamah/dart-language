import 'dart:io';

List<String> specLetters = [' ', ';', ',', '!'];

String encyrptChar(String char, int key) {
  String letter =
      String.fromCharCode((65 + (char.codeUnitAt(0) - 65 + key) % 26));

  return letter;
}

String encryptMessage(String message, int key) {
  message = message.toUpperCase();

  String cipher = '';

  for (var c in message.codeUnits) {
    if (specLetters.contains(String.fromCharCode(c))) {
      cipher += String.fromCharCode(c);
    } else {
      cipher += encyrptChar(String.fromCharCode(c), key);
    }
  }
  return cipher;
}


String decyrptChar(String char, int key) {
  String letter =
      String.fromCharCode((65 + (char.codeUnitAt(0) - 65 + 26 - key) % 26));

  return letter;
}

String decryptMessage(String message, int key) {
  message = message.toUpperCase();

  String cipher = '';

  for (var c in message.codeUnits) {
    if (specLetters.contains(String.fromCharCode(c))) {
      cipher += String.fromCharCode(c);
    } else {
      cipher += decyrptChar(String.fromCharCode(c), key);
    }
  }
  return cipher;
}

inputUser(){
  stdout.write('Enter plain Text:');
  String? plainText = stdin.readLineSync();

  stdout.write('Enter Cipher Key:');
  String? cipherKey = stdin.readLineSync();
  int key = int.parse(cipherKey!);

  String cipherText = encryptMessage(plainText!, key);

  print(cipherText);

  print(decryptMessage(cipherText, key));
}



main() {
  print(encyrptChar('A', 3));
  print(decyrptChar('D', 3));
  print(encryptMessage('dart language', 3));
  print(decryptMessage('GDUW ODQJXDJH', 3));
}
