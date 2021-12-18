package com.sukanmi.neusportsman.validation;


import com.sukanmi.neusportsman.pojo.User;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.validation.ValidationUtils;


public class UserValidator implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
        return User.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
        User user = (User) target;
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "empty-first", "First name field cannot be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "empty-last", "Last name field cannot be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "empty-username", "Username field cannot be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "empty-email", "Email field cannot be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "phoneNumber", "empty-phone", "Phone number field cannot be empty");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "empty-password", "Password field cannot be empty");
	}

}
