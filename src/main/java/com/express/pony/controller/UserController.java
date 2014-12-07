package com.express.pony.controller;

import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import com.express.pony.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Map;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String getRegistrationPage(Map<String, Object> map) {
        map.put("user", new User());
        return "registration";
    }

    @RequestMapping(value = "/registration-action", method = RequestMethod.POST)
    public String onRegistrationAction(@ModelAttribute("user") User user,
                                       BindingResult bindingResult,
                                       Model model) {
  /*      if (bindingResult.hasErrors()) {
            return "sign-up";
        } else {*/
        String newUserId = userService.findNewUserId();
        user.setUserId(newUserId);
        userService.addUser(user);
        userService.addUserRole(new UserRole(newUserId, "R1002"));

        return "redirect:registration";
    }


}
