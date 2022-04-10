import 'dart:io';

abstract class CaesarService {
  encyrptChar(String char, int key);
  decyrptChar(String char, int key);
  encryptMessage(String message, int key);
  decryptMessage(String message, int key);
}

class CaesarServiceImpl implements CaesarService {
  List<String> specLetters = [' ', ';', ',', '!'];

  @override
  String encyrptChar(String char, int key) {
    String letter =
        String.fromCharCode((65 + (char.codeUnitAt(0) - 65 + key) % 26));

    return letter;
  }

  @override
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

  @override
  String decyrptChar(String char, int key) {
    String letter =
        String.fromCharCode((65 + (char.codeUnitAt(0) - 65 + 26 - key) % 26));

    return letter;
  }

  @override
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
}

inputUser() {
  stdout.write('Enter plain Text:');
  String? plainText = stdin.readLineSync();

  stdout.write('Enter Cipher Key:');
  String? cipherKey = stdin.readLineSync();
  int key = int.parse(cipherKey!);

  final caesar = CaesarServiceImpl();

  String cipherText = caesar.encryptMessage(plainText!, key);
  print(cipherText);
  print(caesar.decryptMessage(cipherText, key));
}

main() {
  final caesar = CaesarServiceImpl();

  print(caesar.encyrptChar('A', 3));
  print(caesar.decyrptChar('D', 3));
  print(caesar.encryptMessage('dart language', 3));
  print(caesar.decryptMessage('GDUW ODQJXDJH', 3));
}
