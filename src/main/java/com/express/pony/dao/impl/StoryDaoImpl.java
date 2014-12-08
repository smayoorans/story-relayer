package com.express.pony.dao.impl;

import com.express.pony.dao.StoryDao;
import com.express.pony.dao.UserDao;
import com.express.pony.model.Story;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StoryDaoImpl implements StoryDao {

    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void initiateStory(Story story) {
        sessionFactory.getCurrentSession().save(story);
    }

    @Override
    public List<User> listStories() {
        return null;
    }

    @Override
    public void removeStory(String id) {

    }

    @Override
    public String findNewStoryId() {
        Query query = sessionFactory.getCurrentSession().createQuery("select max(storyId) from Story");
        String id = (String) query.uniqueResult();
        String newUserId = "S1001";
        if(id != null) newUserId = "S" + (Integer.parseInt(id.substring(1)) + 1);
        return newUserId;
    }

    @Override
    public User findStory(String storyId) {
        return null;
    }
}
