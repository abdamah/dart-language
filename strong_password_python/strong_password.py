import re
from typing import Final


def is_password_strong(password):
    password_size: Final = r".{8,}"
    one_lowercase: Final = r"[a-z]"
    one_uppercase: Final = r"[A-Z]"
    one_digit: Final = r"\d"
    special_characters: Final = r"[!\?#$%&'()*+,-./:;<=>?@[\]^_`{|}~]"

    if re.search(password_size, password) is None:
        print('Password must have at least eight characters')
        return False

    elif re.search(one_lowercase, password) is None:
        print('Password must have at least one lowercase character')
        return False

    elif re.search(one_uppercase, password) is None:
        print('Password must have at least one uppercase character')
        return False

    elif re.search(one_digit, password) is None:
        print('Password must have at least one digit')
        return False

    elif re.search(special_characters, password) is None:
        print('Password must have at least one special character')
        return False

    password_strength(password)

    return True


def password_strength(password):
    if 8 <= len(password) < 12:
        print('Week Password')

    elif 12 <= len(password) < 14:
        print('Medium Password')
    else:
        print('Strong Password')


if __name__ == '__main__':
    print(is_password_strong('Abdallah@123456'))
