package db;

import java.util.HashMap;

public class LanguageUtil {

    private static final HashMap<String, HashMap<String, String>> translation = new HashMap<>();

    static {
        HashMap<String, String> rusValues = new HashMap<>();
        rusValues.put("name", "Имя");
        rusValues.put("surname", "Фамилия");
        rusValues.put("save", "Сохранить");
        rusValues.put("country", "Страна");
        rusValues.put("creditCard", "Кредитная Карта");
        rusValues.put("age", "Возраст");
        rusValues.put("gender", "Пол");
        rusValues.put("male", "Мужчина");
        rusValues.put("female", "Женщина");

        translation.put("rus", rusValues);

        HashMap<String, String> engValues = new HashMap<>();
        engValues.put("name", "Name");
        engValues.put("surname", "Surname");
        engValues.put("save", "Save");
        engValues.put("country", "Country");
        engValues.put("creditCard", "Credit Card");
        engValues.put("age", "Age");
        engValues.put("gender", "Gender");
        engValues.put("male", "Male");
        engValues.put("female", "Female");

        translation.put("eng", engValues);
    }

    public static String getTranslationLabelAndLanguages(String label, String lang) {
        return translation.get(lang).get(label);
    }

}
