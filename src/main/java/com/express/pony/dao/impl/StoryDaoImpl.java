package com.express.pony.dao.impl;

import com.express.pony.dao.StoryDao;
import com.express.pony.dao.UserDao;
import com.express.pony.model.Genre;
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
    public void updateStory(Story story) {
    	sessionFactory.getCurrentSession().update(story);
    }

    @Override
    public List<Story> listInitiatedStories(String username) {
        Query hql = sessionFactory.getCurrentSession().createQuery("from Story st where st.initiator.username = :username");
        hql.setParameter("username", username);
        return hql.list();
    }

    @Override
    public List<Story> listContributedStories(String username) {
    	Query hql = sessionFactory.getCurrentSession().createQuery("select st from Story st inner join st.storyParts sp where sp.author.username = :username");
        hql.setParameter("username", username);
        return (List<Story>) hql.list();
    }

    @Override
    public List<Story> listLatestStories(Genre genre) {
    	Query hql = sessionFactory.getCurrentSession().createQuery("from Story st where st.genre = :genre order by createdTimeStamp desc");
    	hql.setParameter("genre", genre);
    	return hql.list();
    }

    @Override
    public void removeStory(String id) {
    	// TODO later
    }

    @Override
    public Story findStory(long storyId) {
        String hqlQuery = "from Story where storyId = :storyId";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("storyId", storyId);
        return (Story) query.uniqueResult();
    }
}
