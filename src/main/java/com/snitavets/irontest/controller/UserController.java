package com.snitavets.irontest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static com.snitavets.irontest.constant.Constant.PAGE_USER_MAIN;
import static com.snitavets.irontest.constant.Constant.PAGE_USER_PERSONAL;

/**
 * @author Ilya_Snitavets
 */
@Controller
@RequestMapping("/irontest/user")
public class UserController {

    @RequestMapping("/main")
    public ModelAndView main() {
        ModelAndView model = new ModelAndView(PAGE_USER_MAIN);
        return model;
    }

    @RequestMapping("/personal")
    public ModelAndView personalAccount() {
        ModelAndView model = new ModelAndView(PAGE_USER_PERSONAL);
        return model;
    }

}
