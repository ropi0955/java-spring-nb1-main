package com.gamf.javaspringnb1main.Exceptions;

public class PostNotFoundException extends RuntimeException{
    public PostNotFoundException(int id){
        super("Ezzel az azonosítóval: " + id + " poszt nem található!");
    }
}
