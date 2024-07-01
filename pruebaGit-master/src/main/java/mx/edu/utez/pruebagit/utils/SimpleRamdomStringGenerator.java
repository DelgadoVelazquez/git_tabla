package mx.edu.utez.pruebagit.utils;

import java.util.Random;

public class SimpleRamdomStringGenerator {

    String alfabeto  ="abcdefghijklmnopqrstubwxyzñ123456789";

    public  String generateString(){
        char[] chars = new char[alfabeto.length()];
        for (int i = 0; i < length(); i++){
            chars[i] = alfabeto.charAt((int) (Math.random() * alfabeto.length()));
        }
        return new String(chars);
    }
}
