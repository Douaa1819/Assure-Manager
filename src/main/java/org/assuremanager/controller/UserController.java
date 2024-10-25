package org.assuremanager.controller;

import org.assuremanager.dto.request.UserLoginRequest;
import org.assuremanager.dto.request.UserRegisterRequest;
import org.assuremanager.exception.InvalidCredentialsException;
import org.assuremanager.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/register")
    public ModelAndView showRegistrationForm() {
        ModelAndView modelAndView = new ModelAndView("auth/register");
        modelAndView.addObject("userRegisterRequest", new UserRegisterRequest());
        return modelAndView;
    }

    @PostMapping("/register")
    public String registerUser(UserRegisterRequest request) {
        userService.registerUser(request);
        return "redirect:/register?success";
    }



    @GetMapping("/login")
    public ModelAndView showLoginForm() {
        ModelAndView modelAndView = new ModelAndView("/auth/login");
        modelAndView.addObject("userLoginRequest", new UserLoginRequest());
        return modelAndView;
    }

    @PostMapping("/login")
    public String loginUser(UserLoginRequest request) {
        try {
            if (userService.loginUser(request)) {
                return "redirect:/services";
            }
        } catch (InvalidCredentialsException e) {
            return "redirect:/login?error";
        }
        return "redirect:/login?error";
    }


    @GetMapping("/logout")
    public ModelAndView logout() {
        ModelAndView modelAndView = new ModelAndView("/auth/login");
        return modelAndView;
    }

    @GetMapping("/test")
    public String test() {
        return "Test successful!";
    }
}