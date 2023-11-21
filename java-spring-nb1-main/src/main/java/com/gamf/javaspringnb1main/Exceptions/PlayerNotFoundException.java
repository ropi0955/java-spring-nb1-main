package com.gamf.javaspringnb1main.Exceptions;

public class PlayerNotFoundException extends RuntimeException{
    public PlayerNotFoundException(int id){
        super("Ezzel az azonosítóval: " + id + " nem található játékos!");
    }
}
