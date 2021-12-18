package com.sukanmi.neusportsman.controller;


import javax.servlet.http.HttpServletRequest;

import com.sukanmi.neusportsman.pojo.User;
import com.sukanmi.neusportsman.dao.UserDAO;
import com.sukanmi.neusportsman.validation.UserValidator;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class UserController {
    
    @Autowired
    UserValidator userValidator;
    
    @RequestMapping(value = "/user-login", method = RequestMethod.GET)
    public String showLogin(HttpServletRequest req) {
        if (req.getSession().getAttribute("user") != null) {
            return "user-home";
        }
        return "user-login";
    }

    @RequestMapping(value = "/user-login", method = RequestMethod.POST)
    public String processLogin(HttpServletRequest req, User user, UserDAO userdoa) {
        
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        user = userdoa.getUser(email);

        if (user == null || (!password.equals(user.getPassword()))) {
            return "invalid-login";
        }

        req.getSession(true).setAttribute("user", user);
        return "user-home";
    }
    
    @RequestMapping(value = "/user-logout", method = RequestMethod.GET)
    public String processLogout(HttpServletRequest req) {
        req.getSession(true).removeAttribute("user");
        return "home";
    }

    @RequestMapping(value = "/user-registration", method = RequestMethod.GET)
    public String showUserRegistration(ModelMap model, User user) {
        
        model.addAttribute("user", user);
        return "user-registration";
    }
    

    @RequestMapping(value = "/user-registration", method = RequestMethod.POST)
    public String processUserRegistration(@ModelAttribute("user") User user, BindingResult result, SessionStatus status, UserDAO userdao) {
        
        userValidator.validate(user, result);
        if (result.hasErrors()) {
            return "user-registration";
        }
        
        userdao.createUser(user);
        status.setComplete();
        return "user-registration-success";
    }
	
}
