package com.snitavets.irontest.dao;

import com.snitavets.irontest.entity.User;

/**
 * Interface to access to entity if user in database
 *
 * @author Ilya_Snitavets
 */
public interface IUserDao {

    /**
     * Create new user in database
     *
     * @param login    unique login of new user
     * @param password hashed password of new user
     * @return true is user was successfully created
     */
    boolean createUser(String login, String password);

    /**
     * Checks login of user in database
     *
     * @param login login, which you want to check for exist
     * @return true if login exist
     */
    boolean isLoginExist(String login);

    /**
     * Find user in database by login
     *
     * @param login login of user
     * @return entity User, by login
     * @see com.snitavets.irontest.entity.User
     */
    User findUserByLogin(String login);

}
