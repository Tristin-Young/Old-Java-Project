package com.yohavo.CI1.dao;

import com.yohavo.CI1.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface UserDao extends JpaRepository<User, Integer> {

    @Query("SELECT u FROM User u WHERE u.username = :username")
    public User getUserByUsername(@Param("username") String username);
    public User findByUsername(String username);

    @Query("SELECT u FROM User u WHERE u.admin = false")
    public List<User> findAllUsers();

}


