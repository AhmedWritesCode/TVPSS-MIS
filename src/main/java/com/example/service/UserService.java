package com.example.service;

import com.example.models.User;
import com.example.service.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    // Check if email already exists
    public boolean existsByEmail(String email) {
        return userDao.existsByEmail(email); // Check email existence using the UserDao
    }

    // Check if username already exists
    public boolean existsByUsername(String username) {
        return userDao.existsByUsername(username); // Check username existence using the UserDao
    }

    // Save user to the database
    public void save(User user) {
        userDao.saveUser(user); // Save user using UserDao
    }

    // Get a user by email (used for login)
    public User getUserByEmail(String email) {
        return userDao.getUserByEmail(email); // Get user by email using UserDao
    }

    // Get a user by username
    public User getUserByUsername(String username) {
        return userDao.getUserByUsername(username); // Get user by username using UserDao
    }

    public List<User> getAllUsers() {
        List<User> users = userDao.findAllUsers(); // Ensure this returns a non-empty list
        System.out.println("Fetched Users: " + users); // Debugging
        return users;
    }
    public void generateCertification(String username) {
        // Update the certification status to "In Progress"
        userDao.updateCertificationStatus(username, "In Progress");
    }
    public void updateNotification(String email, String notification) {
        userDao.updateNotificationByEmail(email, notification);
    }
    
}
