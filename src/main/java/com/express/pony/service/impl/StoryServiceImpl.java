package com.express.pony.service.impl;

import com.express.pony.dao.StoryDao;
import com.express.pony.dao.UserDao;
import com.express.pony.model.Story;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import com.express.pony.service.StoryService;
import com.express.pony.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StoryServiceImpl implements StoryService {

	@Autowired
	private StoryDao storyDao;


    @Transactional
    public void initiateStory(Story story) {
        storyDao.initiateStory(story);
    }

    @Transactional
    public List<User> listStories() {
        return null;
    }

    @Transactional
    public void removeStory(String id) {

    }

    @Transactional
    public String findNewStoryId() {
        return storyDao.findNewStoryId();
    }

    @Transactional
    public User findStory(String storyId) {
        return null;
    }
}
