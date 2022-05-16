bool isPasswordStrong(String password) {
  final passwordSize = RegExp(r'.{8,}');
  final oneLowercase = RegExp(r'[a-z]');
  final oneUppercase = RegExp(r'[A-Z]');
  final oneDigit = RegExp(r'\d');
  final specialCharacter = RegExp(r'\W');

  if (!passwordSize.hasMatch(password)) {
    print('Password must have at least eight characters long.');

    return false;
  } else if (!oneLowercase.hasMatch(password)) {
    print('Password must have at least one lower case character.');

    return false;
  } else if (!oneUppercase.hasMatch(password)) {
    print('Password must have at least one upper case character.');

    return false;
  } else if (!oneDigit.hasMatch(password)) {
    print('Password must have at least one digit.');

    return false;
  } else if (!specialCharacter.hasMatch(password)) {
    print('Password must have at least one special character.');

    return false;
  }

  print(passwordStrength(password));

  return true;
}

String passwordStrength(String password) {
  if (password.length >= 8 && password.length < 12) {
    return 'Week Password';
  } else if (password.length >= 12 && password.length < 14) {
    return 'Medium Password';
  }

  return "Strong Password";
}

void main() {
  print(isPasswordStrong('Abdallah@123456'));
}
