package com.snitavets.irontest.util;

import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.entity.UserType;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.Collection;
import java.util.Iterator;

/**
 * @author Ilya_Snitavets
 */
public class UtilController {

    /**
     * @return user type in system
     * @throws java.lang.IllegalArgumentException if authentication cant cast to UserType
     */
    public static UserType getContextUserType() {
        UserType result = UserType.GUEST;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            Collection<? extends GrantedAuthority> access = userDetail.getAuthorities();
            Iterator<? extends GrantedAuthority> iterator = access.iterator();
            if (iterator.hasNext()) {
                GrantedAuthority authority = iterator.next();
                result = UserType.valueOf(authority.getAuthority());
            }
        }
        return result;
    }


    public static User getUser() {
        User result = null;
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth.getPrincipal() instanceof User) {
            result = (User) auth.getPrincipal();
        }
        return result;
    }

}
