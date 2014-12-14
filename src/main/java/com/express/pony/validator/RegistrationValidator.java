package com.express.pony.validator;


import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.express.pony.model.User;

public class RegistrationValidator implements Validator {
    @Override

    public boolean supports(Class clazz) {
        //just validate the Customer instances
        return User.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "username", "required.username", "Field is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "required.password", "Field is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "displayName", "required.displayName", "Field is required");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress", "required.emailAddress", "Field is required");

        User user = (User) target;

    }
}
