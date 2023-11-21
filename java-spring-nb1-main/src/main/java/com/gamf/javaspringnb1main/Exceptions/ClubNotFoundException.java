package com.gamf.javaspringnb1main.Exceptions;

public class ClubNotFoundException extends RuntimeException{
    public ClubNotFoundException(int id){
        super("Ezzel az azonosítóval " + id + " nem található csapat!");
    }
}
