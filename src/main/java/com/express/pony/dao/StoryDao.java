package com.express.pony.dao;


import com.express.pony.model.Story;
import com.express.pony.model.User;

import java.util.List;

public interface StoryDao {

    public void initiateStory(Story story);

    public List<Story> listStories(String username);

    public void removeStory(String id);

    public String findNewStoryId();

    public User findStory(String storyId);
}
