/*Guess secret word
-----------------------
  * Author Abdallah 
*/

// 1. in function style
import 'dart:io';

guessSecretWord() {
  final secretWord = 'biu';
  int count = 0;

  while (true) {
    count++;
    stdout.write('Enter secret Word:  ');
    String? userInput = stdin.readLineSync();

    if (secretWord == userInput) {
      print('You win!!');
      break;
    } else {
      if (count > 2) {
        print('Tried $count times');
        break;
      } else {
        print('Try again!');
      }
    }
  }
}

// 2. in oop style
class GuessSecretWord {
  guessSecretWord() {
    final secretWord = 'biu';
    int count = 0;

    while (true) {
      count++;
      stdout.write('Enter secret Word:  ');
      String? userInput = stdin.readLineSync();

      if (secretWord == userInput) {
        print('You win!!');
        break;
      } else {
        if (count > 2) {
          print('Tried $count times');
          break;
        } else {
          print('Try again!');
        }
      }
    }
  }
}
