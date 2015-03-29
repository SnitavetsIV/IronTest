package com.snitavets.irontest.dao;

import com.snitavets.irontest.entity.ContactMessage;
import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.exception.DaoException;

/**
 * Interface to access to entity if user in database
 *
 * @author Ilya_Snitavets
 */
public interface IUserDao {

    /**
     * Save user
     *
     * @param user entity of new user
     * @return true is user was successfully created
     */
    boolean saveUser(User user) throws DaoException;

    /**
     * Checks login of user in database
     *
     * @param login login, which you want to check for exist
     * @return true if login exist
     */
    boolean isLoginExist(String login) throws DaoException;

    /**
     * Find user in database by login
     *
     * @param login login of user
     * @return entity User, by login
     * @see com.snitavets.irontest.entity.User
     */
    User findUserByLogin(String login) throws DaoException;

    boolean saveContactMessage(ContactMessage ci) throws DaoException;

}
