package com.example.service;

import com.example.models.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class UserDao {

    @Autowired
    private SessionFactory sessionFactory;

    // Save a new user
    public void saveUser(User user) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.save(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error saving user", e);
        }
    }

    // Get a user by email
    public User getUserByEmail(String email) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where email = :email", User.class)
                          .setParameter("email", email)
                          .uniqueResult();
        }
    }

    // Get a user by username
    public User getUserByUsername(String username) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where username = :username", User.class)
                          .setParameter("username", username)
                          .uniqueResult();
        }
    }

    // Check if a user exists by email
    public boolean existsByEmail(String email) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where email = :email", User.class)
                          .setParameter("email", email)
                          .uniqueResult() != null;
        }
    }

    // Check if a user exists by username
    public boolean existsByUsername(String username) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where username = :username", User.class)
                          .setParameter("username", username)
                          .uniqueResult() != null;
        }
    }

    // Get all users
    public List<User> findAllUsers() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where role in ('student', 'teacher')", User.class).list();
        }
    }

    // Update a user
    public void updateUser(User user) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.update(user);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating user", e);
        }
    }

    // Delete a user by username
    public void deleteUserByUsername(String username) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            User user = session.get(User.class, username);
            if (user != null) {
                session.delete(user);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error deleting user", e);
        }
    }

    // Get the total number of users
    public long countUsers() {
        try (Session session = sessionFactory.openSession()) {
            return (Long) session.createQuery("select count(*) from User").uniqueResult();
        }
    }

    // Update certification status for a user by username
    public void updateCertificationStatus(String username, String certificationStatus) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            User user = session.get(User.class, username);
            if (user != null) {
                user.setCertificationStatus(certificationStatus);
                session.update(user); // Update the user with the new certification status
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating certification status", e);
        }
    }
    public User findByUsername(String username) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from User where username = :username", User.class)
                    .setParameter("username", username)
                    .uniqueResult();
        } catch (Exception e) {
            throw new RuntimeException("Error fetching user by username", e);
        }
    }
    public void updateNotificationByEmail(String email, String notification) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            
            User user = session.createQuery("from User where email = :email", User.class)
                               .setParameter("email", email)
                               .uniqueResult();

            if (user != null) {
                user.setNotification(notification); // Update the notification field
                session.update(user); // Save changes
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating notification", e);
        }}
    
}


