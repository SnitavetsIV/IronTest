package com.snitavets.irontest.service;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.exception.DaoException;
import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import java.util.ArrayList;
import java.util.List;

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
        com.snitavets.irontest.entity.User user = null;
        try {
            user = userDao.findUserByLogin(username);
        } catch (DaoException e) {
            throw new UsernameNotFoundException("Can't load user from database", e);
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        authorities.add(new SimpleGrantedAuthority(user.getType().name()));

        return buildUserForAuthentication(user, authorities);
    }

    private User buildUserForAuthentication(com.snitavets.irontest.entity.User user,
                                            List<GrantedAuthority> authorities) {
        return new User(user.getLogin(),
                user.getPassword(), user.isEnabled(),
                true, true, true, authorities);
    }

    public IUserDao getUserDao() {
        return userDao;
    }

    public void setUserDao(IUserDao _userDao) {
        this.userDao = _userDao;
    }


}
