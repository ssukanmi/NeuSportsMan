package com.sukanmi.neusportsman.validation;


import com.sukanmi.neusportsman.pojo.Event;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


public class EventValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
        return Event.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		
	}

}
