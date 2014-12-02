package com.express.pony.model;

/**
 * Created by pratheep on 11/30/14.
 */

import java.sql.Timestamp;

public class Registration {

    //textbox
    private String firstName;

    //textbox
    private String lastName;

    //textbox
    private String displayName;

    //textbox
    private String emailAddress;

    //textbox
    private String favCatogery;

    //password
    private String password;
    private String confirmPassword;



    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setDisplayName(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }

    public void setFavCatogery(String favCatogery) {
        this.favCatogery = favCatogery;
    }

    public String getFavCatogery() {
        return favCatogery;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPassword() {
        return password;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }
}