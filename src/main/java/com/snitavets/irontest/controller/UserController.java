package com.snitavets.irontest.controller;

import com.snitavets.irontest.entity.User;
import com.snitavets.irontest.util.UtilController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static com.snitavets.irontest.constant.Constant.*;

/**
 * @author Ilya_Snitavets
 */
@Controller
@RequestMapping("/irontest")
public class UserController {

    @RequestMapping("/profile")
    public ModelAndView profile() {
        ModelAndView model;
        User user = UtilController.getUser();
        if (user != null) {
            model = new ModelAndView(PAGE_USER_PROFILE);
            model.addObject(ATR_USER, user);
        } else {
            model = new ModelAndView(PAGE_GUEST_MAIN);
        }
        return model;
    }

    @RequestMapping("/profile/edit")
    public ModelAndView profileEdit() {
        ModelAndView model;
        User user = UtilController.getUser();
        if (user != null) {
            model = new ModelAndView(PAGE_USER_PROFILE_EDIT);
            model.addObject(ATR_USER, user);
        } else {
            model = new ModelAndView(PAGE_GUEST_MAIN);
        }
        return model;
    }

}
