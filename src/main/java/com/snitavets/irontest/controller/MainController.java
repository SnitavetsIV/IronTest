package com.snitavets.irontest.controller;

import com.snitavets.irontest.entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import static com.snitavets.irontest.constant.Constant.*;

/**
 * @author Ilya_Snitavets
 */
@Controller
public class MainController {

    @RequestMapping("/irontest/")
    public ModelAndView home(HttpServletRequest request) {
        ModelAndView result = null;
        HttpSession session = request.getSession();
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
        } else {
            result = new ModelAndView(PAGE_GUEST_MAIN);
        }
        return result;
    }

    @RequestMapping("/irontest/singin")
    public ModelAndView login() {
        return new ModelAndView(PAGE_LOGIN);
    }

    @RequestMapping("/irontest/authorization")
    public ModelAndView authorization(@RequestParam String login, @RequestParam String password, Model model) {

        return new ModelAndView(PAGE_LOGIN);
    }

    @RequestMapping("/irontest/registration")
    public ModelAndView registration() {
        return new ModelAndView(PAGE_REGISTRATION);
    }

    @RequestMapping("/irontest/save")
    public ModelAndView saveNewUser() {
        return new ModelAndView(PAGE_REGISTRATION);
    }

}
