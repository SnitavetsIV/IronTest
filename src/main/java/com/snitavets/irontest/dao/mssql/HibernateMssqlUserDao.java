package com.snitavets.irontest.dao.mssql;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.exception.DaoException;
import org.hibernate.*;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

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
     * Save user
     *
     * @param user entity of new user
     * @return true is user was successfully created
     */
    @Override
    @Transactional
    public boolean saveUser(User user) throws DaoException {
        boolean result = false;
        Transaction transaction = null;
        try {
            Session session = sessionFactory.getCurrentSession();
            transaction = session.beginTransaction();
            session.saveOrUpdate(user);
            result = true;
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new DaoException(he);
        }
        return result;
    }

    /**
     * Checks login in database
     *
     * @param login login, which you want to check for exist
     * @return true if login exist
     */
    @Override
    public boolean isLoginExist(String login) throws DaoException {
        boolean result = false;
        Transaction transaction = null;
        try {
            Session session = sessionFactory.getCurrentSession();
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(User.class).add(Restrictions.eq("login", login));
            if (criteria.list().size() > 0) {
                result = true;
            }
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new DaoException(he);
        }
        return result;
    }

    /**
     * Find user in database by login
     *
     * @param login login of user
     * @return entity User, by login
     *          null if user isn't exist
     * @see com.snitavets.irontest.entity.User
     */
    @Override
    public User findUserByLogin(String login) throws DaoException {
        User user = null;
        Transaction transaction = null;
        try {
            Session session = sessionFactory.getCurrentSession();
            transaction = session.beginTransaction();
            Criteria criteria = session.createCriteria(User.class).add(Restrictions.eq("login", login));
            user = (User) criteria.uniqueResult();
            transaction.commit();
        } catch (HibernateException he) {
            if (transaction != null) {
                transaction.rollback();
            }
            throw new DaoException(he);
        }
        return user;
    }
}
