package com.express.pony.validator;

/**
 * Created by pratheep on 12/1/14.
 */

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import com.express.pony.model.Registration;

public class RegistrationValidator implements Validator{
    @Override

    public boolean supports(Class clazz) {
        //just validate the Customer instances
        return Registration.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName",
                "required.firstName", "First name is required");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "displayName",
                "required.displayName", "Login Name is required");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailAddress",
                "required.emailAddress", "Email Address is required");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
                "required.password", "Password is required");

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword",
                "required.confirmPassword", "Confirm Password required");

        Registration reg = (Registration)target;

        if(!(reg.getPassword().equals(reg.getConfirmPassword()))){
            errors.rejectValue("password", "notmatch.password");
        }

        if("NONE".equals(reg.getFavCatogery())){
            errors.rejectValue("favCatogery", "required.favCatogery");
        }
    }
}
