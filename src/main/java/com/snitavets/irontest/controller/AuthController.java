package com.snitavets.irontest.controller;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.exception.DaoException;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import static com.snitavets.irontest.constant.Constant.*;

/**
 * @author Ilya_Snitavets
 */
@Controller
public class AuthController {

    private static final Logger LOG = Logger.getLogger(AuthController.class);

    @Autowired
    private IUserDao dao;

    public void setDao(IUserDao _dao) {
        dao = _dao;
    }

    @RequestMapping("/irontest/login")
    public ModelAndView login(@RequestParam(required = false) String error,
                              @RequestParam(required = false) String logout,
                              HttpServletRequest request) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject(ATR_ERROR, getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
        }

        if (logout != null) {
            model.addObject(ATR_MSG, MSG_LOGOUT_SUCCESS);
        }
        model.setViewName(PAGE_LOGIN);

        return model;
    }

    // customize the error message
    private String getErrorMessage(HttpServletRequest request, String key) {

        Exception exception = (Exception) request.getSession().getAttribute(key);

        String error;
        if (exception instanceof BadCredentialsException) {
            error = MSG_LOGIN_ERR_USPASS;
        } else if (exception instanceof LockedException) {
            error = MSG_LOGIN_ERR_LOCKED;
        } else {
            error = MSG_ERR_UNKNOWN;
        }
        LOG.error(exception);

        return error;
    }

    @RequestMapping("/irontest/registration")
    public ModelAndView registration() {
        return new ModelAndView(PAGE_REGISTRATION);
    }

    @RequestMapping(value = "/irontest/registration/save", method = RequestMethod.POST)
    public ModelAndView saveNewUser(@RequestParam String login,
                                    @RequestParam String password,
                                    @RequestParam String password2) throws DaoException {
        ModelAndView modelAndView = new ModelAndView();
        if (dao.isLoginExist(login)) {
            modelAndView.setViewName(PAGE_REGISTRATION);
            modelAndView.addObject(ATR_ERROR, MSG_REG_ERR_LOGIN_EXIST);
        } else if (!password.equals(password2)) {
            modelAndView.setViewName(PAGE_REGISTRATION);
            modelAndView.addObject(ATR_ERROR, MSG_REG_ERR_PASS_SAME);
            modelAndView.addObject(ATR_LOGIN, login);
        } else {
            User user = new User();
            user.setLogin(login);
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            user.setPassword(encoder.encode(password));
            try {
                dao.saveUser(user);
                modelAndView.setViewName(PAGE_LOGIN);
                modelAndView.addObject(ATR_MSG, MSG_REG_SUCCESS);
            } catch (DaoException e) {
                LOG.error(e);
                modelAndView.addObject(ATR_ERROR, MSG_ERR_UNKNOWN);
                modelAndView.setViewName(PAGE_REGISTRATION);
            }
        }
        return modelAndView;
    }
}
