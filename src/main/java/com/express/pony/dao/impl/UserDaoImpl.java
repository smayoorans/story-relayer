package com.express.pony.dao.impl;

import com.express.pony.dao.UserDao;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addUser(User user) {
        sessionFactory.getCurrentSession().save(user);
    }

    @Override
    public void addUserRole(UserRole userRole) {
        sessionFactory.getCurrentSession().save(userRole);

    }

    @Override
    public List<User> listUser() {
        return sessionFactory.getCurrentSession().createQuery("from User").list();
    }

    @Override
    public void removeUser(Integer id) {
        User user = (User) sessionFactory.getCurrentSession().load(User.class, id);
        if (null != user) {
            sessionFactory.getCurrentSession().delete(user);
        }
    }

    @Override
    public String findNewUserId() {
        Query query = sessionFactory.getCurrentSession().createQuery("select max(userId) from User");
        String id = (String) query.uniqueResult();
        String newUserId = "U1001";
        if(id != null) newUserId = "U" + (Integer.parseInt(id.substring(1)) + 1);
        return newUserId;
    }

    @Override
    public User findUser(String userId) {
        String hqlQuery = "from User where userId = :userId";
        Query query = sessionFactory.getCurrentSession().createQuery(hqlQuery);
        query.setParameter("userId", userId);
        return (User) query.uniqueResult();
    }
}
