package org.assuremanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class HomeController {

    @GetMapping("/services")
    public ModelAndView home() {
        ModelAndView mav = new ModelAndView("home");
        mav.addObject("message", "Welcome to the Insurance Management System!");
        return mav;
    }
}
