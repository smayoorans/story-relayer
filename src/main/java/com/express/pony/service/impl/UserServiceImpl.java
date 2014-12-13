package com.express.pony.service.impl;

import com.express.pony.dao.UserDao;
import com.express.pony.model.User;
import com.express.pony.model.UserRole;
import com.express.pony.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;

    @Transactional
    public void addUser(User user) {
        userDao.addUser(user);
    }

    @Transactional
    public void addUserRole(UserRole userRole) {
        userDao.addUserRole(userRole);
    }

    @Transactional
    public List<User> listUser() {
        return userDao.listUser();
    }

    @Transactional
    public void removeUser(Integer id) {
        userDao.removeUser(id);
    }

    @Transactional
    public String findNewUserId() {
        return userDao.findNewUserId();
    }

    @Transactional
    public User findUser(String username) {
        return userDao.findUser(username);
    }

}
