package com.express.pony.service;


import com.express.pony.model.Story;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;

import java.util.List;

public interface StoryService {

    public void initiateStory(Story story);

    public List<User> listStories();

    public void removeStory(String id);

    public String findNewStoryId();

    public User findStory(String storyId);
}
