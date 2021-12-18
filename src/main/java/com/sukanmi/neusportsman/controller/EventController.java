package com.sukanmi.neusportsman.controller;


import javax.servlet.http.HttpServletRequest;

import com.sukanmi.neusportsman.pojo.User;
import com.sukanmi.neusportsman.pojo.Event;
import com.sukanmi.neusportsman.dao.EventDAO;
import com.sukanmi.neusportsman.service.Venue;
import com.sukanmi.neusportsman.validation.EventValidator;

import org.springframework.ui.ModelMap;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.beans.factory.annotation.Autowired;


@Controller
public class EventController {
    
    @Autowired
    EventValidator eventValidator;

    @RequestMapping(value = "/user-book-event", method = RequestMethod.GET)
    public String showEventForm(ModelMap model, Event event, Venue venue) {
        
    	model.addAttribute("venues", venue.getLocations());
        model.addAttribute("event", event);
        return "book-event";
    }

    @RequestMapping(value = "/user-book-event", method = RequestMethod.POST)
    public String processEventForm(@ModelAttribute("event") Event event, BindingResult result, SessionStatus status, EventDAO eventdao, HttpServletRequest req) {
    	
    	eventValidator.validate(event, result);
    	if (result.hasErrors()) {
    		return "book-event";
    	}

    	event.setOwner(((User) req.getSession().getAttribute("user")).getEmail());
        eventdao.createEvent(event);
        status.setComplete();
    	return "event-booking-success";
    }
    

    @RequestMapping(value = "/events", method = RequestMethod.GET)
    	public String showEvents() {
			return "events";
    	}

}
