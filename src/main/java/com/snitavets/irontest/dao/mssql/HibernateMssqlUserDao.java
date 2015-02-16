package com.snitavets.irontest.dao.mssql;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.User;
import org.hibernate.SessionFactory;

/**
 * Hibernate realisation to MS Sql Server of user dao
 *
 * @author Ilya_Snitavets
 */
public class HibernateMssqlUserDao implements IUserDao {

    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    /**
     * Create user
     *
     * @param login    unique login of new user
     * @param password hashed password of new user
     * @return true is user was successfully created
     */
    @Override
    public boolean createUser(String login, String password) {
        return false;
    }

    /**
     * Checks login in database
     *
     * @param login login, which you want to check for exist
     * @return true if login exist
     */
    @Override
    public boolean isLoginExist(String login) {
        return false;
    }

    /**
     * Find user in database by login
     *
     * @param login login of user
     * @return entity User, by login
     * @see com.snitavets.irontest.entity.User
     */
    @Override
    public User findUserByLogin(String login) {
        return null;
    }
}
