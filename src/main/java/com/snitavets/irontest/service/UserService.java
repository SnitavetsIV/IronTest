package com.snitavets.irontest.service;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.exception.DaoException;
import org.apache.log4j.Logger;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

/**
 * Provide a service actions with entity User
 *
 * @author Ilya_Snitavets
 */
public class UserService implements UserDetailsService {

    private static final Logger LOG = Logger.getLogger(UserService.class);

    private IUserDao userDao;

    @Override
    public UserDetails loadUserByUsername(final String username)
            throws UsernameNotFoundException {
        User user = null;
        try {
            user = userDao.findUserByLogin(username);
        } catch (DaoException e) {
            throw new UsernameNotFoundException("Can't load user from database", e);
        }
        if (user == null) {
            throw new UsernameNotFoundException("Username not found");
        }
        return user;
    }

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao _userDao) {
        this.userDao = _userDao;
    }


}
