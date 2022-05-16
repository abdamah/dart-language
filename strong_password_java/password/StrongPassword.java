package com.riigsoft.password;

import java.util.regex.Pattern;

public class StrongPassword implements IStrongPassword {

    @Override
    public boolean IStrongPassword(String password) {

        var size =PasswordExpression.size;
        var sizeMatcher = size.matcher(password);

        var oneLowercase = PasswordExpression.oneLowercase;
        var oneLowercaseMatcher = oneLowercase.matcher(password);

        var oneUppercase = PasswordExpression.oneUppercase;
        var oneUppercaseMatcher = oneUppercase.matcher(password);

        var oneDigit = PasswordExpression.oneDigit;
        var oneDigitMatcher = oneDigit.matcher(password);

        var specCharacter = PasswordExpression.specialCharacter;
        var specCharacterMatcher = specCharacter.matcher(password);

        if (!sizeMatcher.find()) {
            System.out.println("Password must have at least 8 characters");
            return false;
        } else if (!oneLowercaseMatcher.find()) {
            System.out.println("Password must have at least lowercase character");
            return false;
        } else if (!oneUppercaseMatcher.find()) {
            System.out.println("Password must have at least uppercase character");
            return false;
        } else if (!oneDigitMatcher.find()) {
            System.out.println("Password must have at least one digit");
            return false;
        } else if (!specCharacterMatcher.find()) {
            System.out.println("Password must have at least one special character");
            return false;
        }

       PasswordExpression.passwordStrength(password);

        return true;
    }
}
