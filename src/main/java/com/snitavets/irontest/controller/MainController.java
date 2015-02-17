package com.snitavets.irontest.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author Ilya_Snitavets
 */
@Controller
public class MainController {

    @RequestMapping("/irontest/")
    public ModelAndView home() {
        return new ModelAndView("startPage");
    }

}
