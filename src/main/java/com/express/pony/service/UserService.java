package com.express.pony.service;


import com.express.pony.model.User;
import com.express.pony.model.UserRole;

import java.util.List;

public interface UserService {

    public void addUser(User user);

    public void addUserRole(UserRole userRole);

    public List<User> listUser();

    public void removeUser(Integer id);

    public String findNewUserId();

    public User findUser(String username);
}
