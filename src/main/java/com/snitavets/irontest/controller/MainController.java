package com.snitavets.irontest.controller;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.ContactMessage;
import com.snitavets.irontest.entity.UserType;
import com.snitavets.irontest.exception.DaoException;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Collection;
import java.util.Iterator;

import static com.snitavets.irontest.constant.Constant.*;

/**
 * @author Ilya_Snitavets
 */
@Controller
public class MainController {

    private static final Logger LOG = Logger.getLogger(MainController.class);

    @Autowired
    private IUserDao dao;

    public void setDao(IUserDao _dao) {
        dao = _dao;
    }

    @RequestMapping(value = "/irontest/contact/")
    public ModelAndView contact() {
        return new ModelAndView(PAGE_CONTACT);
    }

    @RequestMapping(value = "/irontest/contact/save")
    public ModelAndView contactSave(@RequestParam String name,
                                    @RequestParam String email,
                                    @RequestParam(required = false) String phone,
                                    @RequestParam String message) {
        ModelAndView modelAndView = new ModelAndView(PAGE_CONTACT);
        try {
            ContactMessage cm = new ContactMessage();
            cm.setName(name);
            cm.setEmail(email);
            cm.setPhone(phone);
            cm.setMessage(message);
            dao.saveContactMessage(cm);
            modelAndView.addObject(ATR_MSG, MSG_CONT_SUCCESS);
        } catch (DaoException e) {
            LOG.error(e);
            modelAndView.addObject(ATR_ERROR, MSG_ERR_UNKNOWN);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/irontest/about/")
    public ModelAndView about() {
        return new ModelAndView(PAGE_ABOUT);
    }

    @RequestMapping(value = {"/irontest/", "/", "/irontest/home"})
    public ModelAndView home() {
        ModelAndView model = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            Collection<? extends GrantedAuthority> access = userDetail.getAuthorities();
            Iterator<? extends GrantedAuthority> iterator = access.iterator();
            GrantedAuthority authority = iterator.next();
            if (UserType.USER.toString().equals(authority.getAuthority())) {
                model.setViewName(PAGE_USER_MAIN);
            } else if (UserType.ADMIN.toString().equals(authority.getAuthority())) {
                model.setViewName(PAGE_ADMIN_MAIN);
            } else if (UserType.TUTOR.toString().equals(authority.getAuthority())) {
                model.setViewName(PAGE_TUTOR_MAIN);
            } else {
                model.setViewName(PAGE_GUEST_MAIN);
            }
            model.addObject("username", userDetail.getUsername());
        } else {
            model.setViewName(PAGE_GUEST_MAIN);
        }
        return model;
    }

    @RequestMapping(value = "/irontest/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();

        model.setViewName(PAGE_ADMIN_MAIN);

        return model;
    }

    @RequestMapping(value = "/irontest/welcome**", method = RequestMethod.GET)
    public ModelAndView userPage() {

        ModelAndView model = new ModelAndView();

        model.setViewName(PAGE_USER_MAIN);

        return model;
    }


    @RequestMapping(value = "/irontest/403")
    public ModelAndView accessDenied() {
        /*ModelAndView model = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            LOG.warn("access denied to user:" + userDetail);
            model.addObject("username", userDetail.getUsername());
        }

        model.setViewName(PAGE_403);*/
        return home();

    }

}
