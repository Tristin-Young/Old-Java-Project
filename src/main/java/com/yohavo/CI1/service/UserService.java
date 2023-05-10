package com.yohavo.CI1.service;

import com.yohavo.CI1.dao.GiveawaystructDao;
import com.yohavo.CI1.dao.UserDao;
import com.yohavo.CI1.entity.Giveawaystruct;
import com.yohavo.CI1.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    private UserDao repo;
    private GiveawaystructDao giveawaystructDao;

    public void processOAuthPostLogin(String username) {
        User existUser = repo.getUserByUsername(username);

        if (existUser == null) {
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setAdmin(false);
            //newUser.setAge();
            newUser.setIsEnabled(false);
            repo.save(newUser);
        }
    }

    public void processOAuthPostLogin(String username,String name) {
        User existUser = repo.getUserByUsername(username);
        if (existUser == null) {
            User newUser = new User();
            newUser.setUsername(username);
            newUser.setAdmin(false);
            newUser.setName(name);
            //newUser.setAge();
            newUser.setIsEnabled(false);
            repo.save(newUser);
        }
    }

    public void getGiveawayCount(Giveawaystruct g) {
        System.out.println("users: " + g.getUsers());
    }
}

