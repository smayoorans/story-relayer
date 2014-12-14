package com.express.pony.controller;

import com.express.pony.model.*;
import com.express.pony.service.StoryService;
import com.express.pony.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.Map;

@Controller
public class StoryController {

    @Autowired
    private StoryService storyService;

    @Autowired
    private UserService userService;

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
        story.setCreatedTimeStamp((new Date()).getTime());
        storyService.initiateStory(story);
        model.addAttribute("storyId", story.getStoryId());
        return "add-initial-story";
    }

    @RequestMapping(value = "/add-initial-story", method = RequestMethod.GET)
    public String addInitialStoryPage(){
        return "add-initial-story";
    }


    @RequestMapping(value = "/add-initial-story-action", method = RequestMethod.POST)
    public String addInitialStoryAction(HttpServletRequest request, Authentication authentication) {
        String storyPart = request.getParameter("story-text");
        Long storyId = Long.parseLong(request.getParameter("story-id"));

        Story story = storyService.findStory(storyId);
        User user = userService.findUser(authentication.getName());

        StoryPart storyPartObj = new StoryPart();
        storyPartObj.setAuthor(user);
        storyPartObj.setPartContent(storyPart);
        storyPartObj.setDraft(false);
        story.addStoryPart(storyPartObj);
        storyService.updateStory(story);
        return "redirect:index";
    }

    @RequestMapping(value = "/edit-story", method = RequestMethod.GET)
    public String showStoryEditPage(HttpServletRequest request, Model model){
        long storyId = Long.parseLong(request.getParameter("story-id"));
        System.out.println("story id" + storyId);
        model.addAttribute("story", storyService.findStory(storyId));
        return "edit-story";
    }


    @RequestMapping(value = "/view-story", method = RequestMethod.GET)
    public String showStoryViewPage(HttpServletRequest request, Model model){
        Long storyId = Long.parseLong(request.getParameter("story-id"));
        Story story = storyService.findStory(storyId);
        model.addAttribute("story", story);
        return "view-story";
    }

    @RequestMapping(value = "/top-rated", method = RequestMethod.GET)
    public String showTopRatedStories(){
        return "top-rated-stories";
    }


    @RequestMapping(value = "/delete-story", method = RequestMethod.GET)
    public String deleteStory(HttpServletRequest request, Model model){
        Long storyId = Long.parseLong(request.getParameter("story-id"));
        System.out.println("Long .." + storyId);
        boolean isDeleted = storyService.removeStory(storyId);
        System.out.println("booo" + isDeleted);
//        model.addAttribute("story", story);
        return "top-rated-stories";
    }

}
