package com.snitavets.irontest.entity;

import java.io.Serializable;

/**
 * Class of user entity in application
 *
 * @author Ilya_Snitavets
 */
public class User implements Serializable {

    private String login;
    private String firstName;
    private String lastName;
    private UserType type;

}
