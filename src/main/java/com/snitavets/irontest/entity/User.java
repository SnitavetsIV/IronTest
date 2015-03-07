package com.snitavets.irontest.entity;

import java.io.Serializable;

/**
 * Class of user entity in application
 *
 * @author Ilya_Snitavets
 */
public class User implements Serializable {

    private String login;
    private String password;
    private String firstName;
    private String lastName;
    private UserType type;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
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

    public UserType getType() {
        return type;
    }

    public void setType(UserType type) {
        this.type = type;
    }
}
