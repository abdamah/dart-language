import 'dart:io';

guessSecretWord() {
  String secretWord = 'dart';
  int count = 0;

  while (true) {
    count++;
    stdout.write('Enter secret word: ');
    String? guessWord = stdin.readLineSync();

    if (secretWord == guessWord) {
      print('You win!');
      break;
    } else {
      if (count > 2) {
        print('You tried $count times');
        break;
      } else {
        print('Try again!, $count');
      }
    }
  }
}
