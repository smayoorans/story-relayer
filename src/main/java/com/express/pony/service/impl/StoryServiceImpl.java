package com.express.pony.service.impl;

import com.express.pony.dao.StoryDao;
import com.express.pony.dao.UserDao;
import com.express.pony.model.Genre;
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
    public void updateStory(Story story) {
        storyDao.updateStory(story);
    }

	@Override
	@Transactional
	public List<Story> listInitiatedStories(String username) {
		return storyDao.listInitiatedStories(username);
	}


	@Override
	@Transactional
	public List<Story> listLatestStories(Genre genre) {
		return storyDao.listLatestStories(genre);
	}


	@Override
	@Transactional
	public List<Story> listContributedStories(String username) {
		return storyDao.listContributedStories(username);
	}

	@Override
	public void removeStory(String id) {
		// TODO Auto-generated method stub
	}

	@Override
	@Transactional
	public Story findStory(long storyId) {
		return storyDao.findStory(storyId);
	}
}
