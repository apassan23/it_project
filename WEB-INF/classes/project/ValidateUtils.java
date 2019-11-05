package project;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ValidateUtils {

    public static boolean isDateValid(String date) {
        String regex = "^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher((CharSequence) date);
        return matcher.matches();
    }

    public static boolean isEmailValid(String email) {
        String regex = "^[a-zA-Z0-9_%\\.]+@[a-zA-Z]+(\\.[a-zA-Z]{2})?\\.[a-zA-Z]{2,6}$";
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher((CharSequence) email);
        return matcher.matches();
    }

}