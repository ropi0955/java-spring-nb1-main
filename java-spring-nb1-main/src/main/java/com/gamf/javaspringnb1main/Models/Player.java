package com.gamf.javaspringnb1main.Models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.lang.Nullable;

import javax.persistence.*;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "labdarugo")
public class Player {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;

    @Column(name = "mezszam")
    @NotNull
    private int  jersey;

    @Column(name = "klubid")
    @NotNull
    private int clubID;

    @Column(name = "posztid")
    @NotNull
    private int postID;

    @Column(name = "utonev")
    @NotEmpty(message = "Kötelező mező")
    private String firstName;

    @Column(name = "vezeteknev")
    @NotEmpty(message = "Kötelező mező")
    private String lastName;

    @Column(name = "szulido")
    @NotEmpty(message = "Kötelező mező")
    private String birthDate;

    @Column(name = "magyar")
    @NotNull
    private Boolean isHungarian;

    @Column(name = "ertek")
    @NotNull
    @Min(value = 0L, message = "A játékos értéke nem lehet 0")
    private int value;

    @OneToOne
    @JoinColumn(name = "klubid", referencedColumnName = "id", insertable = false, updatable = false)
    @Nullable
    @JsonIgnore
    private Club club;

    @OneToOne
    @JoinColumn(name = "posztid", referencedColumnName = "id", insertable = false, updatable = false)
    @Nullable
    @JsonIgnore
    private Post post;

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }

    public int getId() {
        return id;
    }

    public int getJersey() {
        return jersey;
    }

    public void setJersey(int jersey) {
        this.jersey = jersey;
    }

    public int getClubID() {
        return clubID;
    }

    public void setClubID(int clubID) {
        this.clubID = clubID;
    }

    public int getPostID() {
        return postID;
    }

    public void setPostID(int postID) {
        this.postID = postID;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(String birthDate) {
        this.birthDate = birthDate;
    }

    public Boolean getIsHungarian() {
        return isHungarian;
    }

    public void setIsHungarian(Boolean hungarian) {
        isHungarian = hungarian;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

}
