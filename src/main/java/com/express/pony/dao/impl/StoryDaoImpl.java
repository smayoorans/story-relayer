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
    public List<Story> listStories(String username) {
        return sessionFactory.getCurrentSession().createQuery("from Story").list();
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
    public Story findStory(String storyId) {
        String hqlQuery = "from Story where storyId = :storyId";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("storyId", storyId);
        return (Story) query.uniqueResult();
    }
}
