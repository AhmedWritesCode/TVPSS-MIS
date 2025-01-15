package com.example.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.models.CrewApplication;


@Repository
public class CrewAppDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void saveCrewApplication(CrewApplication crewApplication) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.save(crewApplication);
            transaction.commit();  // Commit if successful
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();  // Rollback if there is an error
            }
            throw new RuntimeException("Please Submit your Talent Application.", e);
        } finally {
            session.close();  // Always close the session
        }
    }
}
