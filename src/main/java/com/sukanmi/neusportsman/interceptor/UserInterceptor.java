package com.sukanmi.neusportsman.interceptor;


import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class UserInterceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //To change body of generated methods, choose Tools | Templates.
        HttpSession session = request.getSession(true);
        if (session.getAttribute("user") == null) {
            response.getWriter().println("User has been logged out or session as expired, click <a href='user-login'>here</a> to log in.");
            return false;
        }
        return true;
    }
    
}
