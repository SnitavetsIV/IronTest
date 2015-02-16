package com.snitavets.irontest.dao;

/**
 * @author Ilya_Snitavets
 */
public interface IUserDao {

    /**
     * Create user
     *
     * @param login    unique login of new user
     * @param password hashed password of new user
     * @return true is user was successfully created
     */
    boolean createUser(String login, String password);

    /**
     * Checks login in database
     *
     * @param login login, which you want to check for exist
     * @return true if login exist
     */
    boolean isLoginExist(String login);

}
