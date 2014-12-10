package com.express.pony.controller;

import com.express.pony.model.Story;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import com.express.pony.service.StoryService;
import com.express.pony.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.Date;
import java.util.Map;

@Controller
public class StoryController {

    @Autowired
    private StoryService storyService;

    @RequestMapping(value = "/initiate-story", method = RequestMethod.GET)
    public String getRegistrationPage(Map<String, Object> map) {
        map.put("story", new Story());
        return "initiate-story";
    }

    @RequestMapping(value = "/initiate-action", method = RequestMethod.POST)
    public String onRegistrationAction(@ModelAttribute("story") Story story,
                                       BindingResult bindingResult,
                                       Model model) {
  /*      if (bindingResult.hasErrors()) {
            return "sign-up";
        } else {*/
        String newStoryId = storyService.findNewStoryId();

        story.setCreateDate((new Date()).toString());
        story.setStoryId(newStoryId);
        storyService.initiateStory(story);

        return "redirect:index";
    }


}