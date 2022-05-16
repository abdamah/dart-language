package com.riigsoft.password;

import java.util.regex.Pattern;

public class PasswordExpression {
    static final Pattern size = Pattern.compile(".{8,}");
    static final Pattern oneLowercase = Pattern.compile("[a-z]");
    static final Pattern oneUppercase = Pattern.compile("[A-Z]");
    static final Pattern oneDigit = Pattern.compile("\\d");
    static final Pattern specialCharacter = Pattern.compile("[!@#$%^&*(),.?\":{}|<>]");


    public static void passwordStrength(String password){

        if (password.length() >= 8  && password.length() <12)
            System.out.println("Week password.");

        else if (password.length() >= 12 && password.length() <14)
            System.out.println("Medium password.");
        else
            System.out.println("Strong password.");
    }
}
