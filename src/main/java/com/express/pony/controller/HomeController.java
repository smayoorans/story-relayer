package com.express.pony.controller;

import com.express.pony.service.StoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @Autowired
    private StoryService storyService;

    @RequestMapping(value={"", "/", "index"})
    public ModelAndView defaultPage(Authentication authentication) {

        ModelAndView model = new ModelAndView();
      /*  model.addObject("title", "Spring Security Login Form - Database Authentication");
        model.addObject("message", "This is default page!");

        model.addObject("stories", storyService.listStories("fg"));*/
        model.setViewName("index");
        return model;

    }

    @RequestMapping(value = "/admin**", method = RequestMethod.GET)
    public ModelAndView adminPage() {

        ModelAndView model = new ModelAndView();
        model.addObject("title", "Spring Security Login Form - Database Authentication");
        model.addObject("message", "This page is for ROLE_ADMIN only!");
        model.setViewName("admin");
        return model;

    }

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }
}

