package com.snitavets.irontest.controller;

import com.snitavets.irontest.dao.IUserDao;
import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.exception.DaoException;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.authentication.encoding.Md5PasswordEncoder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
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
public class MainController {

    private static final Logger LOG = Logger.getLogger(MainController.class);

    @Autowired
    private IUserDao dao;

    public void setDao(IUserDao _dao) {
        dao = _dao;
    }

    @RequestMapping(value = {"/irontest/", "/"})
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView result = null;
        /*HttpSession session = request.getSession();
        User user = (User) session.getAttribute(ATR_USER);
        if (user != null) {
            switch (user.getType()) {
                case USER:
                    result = new ModelAndView(PAGE_USER_MAIN);
                    break;
                case ADMIN:
                    result = new ModelAndView(PAGE_ADMIN_MAIN);
                    break;
                case TUTOR:
                    result = new ModelAndView(PAGE_TUTOR_MAIN);
                    break;
                default:
                    session.removeAttribute(ATR_USER);
                    result = new ModelAndView(PAGE_GUEST_MAIN);
            }
        } else {*/
            result = new ModelAndView(PAGE_GUEST_MAIN);
       /*}*/
        return result;
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

    @RequestMapping("/irontest/login")
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
                              @RequestParam(value = "logout", required = false) String logout,
                              HttpServletRequest request) {

        ModelAndView model = new ModelAndView();
        if (error != null) {
            model.addObject("error", getErrorMessage(request, "SPRING_SECURITY_LAST_EXCEPTION"));
        }

        if (logout != null) {
            model.addObject("msg", "You've been logged out successfully.");
        }
        model.setViewName(PAGE_LOGIN);

        return model;
    }

    // customize the error message
    private String getErrorMessage(HttpServletRequest request, String key) {

        Exception exception = (Exception) request.getSession().getAttribute(key);

        String error = "";
        if (exception instanceof BadCredentialsException) {
            error = "Invalid username or password!";
        } else if (exception instanceof LockedException) {
            error = exception.getMessage();
        } else {
            error = "Invalid username or password!";
        }
        LOG.error(exception);

        return error;
    }

    @RequestMapping("/irontest/registration")
    public ModelAndView registration() {
        return new ModelAndView(PAGE_REGISTRATION);
    }

    @RequestMapping(value = "/irontest/save", method = RequestMethod.GET)
    public ModelAndView saveNewUser(@RequestParam String login,
                                    @RequestParam String password,
                                    @RequestParam String password2) throws DaoException {
        ModelAndView modelAndView = new ModelAndView();
        if (dao.isLoginExist(login)) {

        }
        if (password.equals(password2)) {
            User user = new User();
            user.setLogin(login);
            Md5PasswordEncoder encoder = new Md5PasswordEncoder();
            user.setPassword(encoder.encodePassword(password, null));
            dao.saveUser(user);
            modelAndView.setViewName(PAGE_LOGIN);
        } else {
            modelAndView.setViewName(PAGE_REGISTRATION);
        }
        return modelAndView;
    }

    @RequestMapping(value = "/irontest/403", method = RequestMethod.GET)
    public ModelAndView accesssDenied() {
        ModelAndView model = new ModelAndView();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (!(auth instanceof AnonymousAuthenticationToken)) {
            UserDetails userDetail = (UserDetails) auth.getPrincipal();
            LOG.info(userDetail);
            model.addObject("username", userDetail.getUsername());
        }

        model.setViewName(PAGE_403);
        return model;

    }

}
