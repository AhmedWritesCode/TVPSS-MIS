package com.example.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.models.CrewApplication;
import java.time.LocalDateTime;
import java.util.List;

@Repository
public class CrewAppDao {

    @Autowired
    private SessionFactory sessionFactory;

    public List<CrewApplication> findAllApplications() {
        try (Session session = sessionFactory.openSession()) {
            String hql = "from CrewApplication";
            System.out.println("findAllApplications - Query: " + hql); // 打印 SQL 查询语句
            List<CrewApplication> list = session.createQuery(hql, CrewApplication.class).list();
            System.out.println("findAllApplications - Result List Size: " + list.size()); // 打印查询结果大小
            for(CrewApplication application : list){
                System.out.println("findAllApplications - Application ID: " + application.getId() + ", Name: " + application.getName() + ", Interview Date Time: " + application.getInterviewDateTime());
            }
            return list;
        }
    }
    public CrewApplication findApplicationById(Long applicationId) {
        try (Session session = sessionFactory.openSession()) {
            return session.get(CrewApplication.class, applicationId);
        }
    }

    public void updateApplicationStatus(Long applicationId, String status) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            CrewApplication application = session.get(CrewApplication.class, applicationId);
            if (application != null) {
                application.setStatus(status);
                session.update(application);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public void saveInterviewDateTime(Long applicationId, String interviewDateTime) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            CrewApplication application = session.get(CrewApplication.class, applicationId);
            if (application != null) {
                application.setInterviewDateTime(interviewDateTime);
                session.update(application);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
    
    public List<CrewApplication> findApplicationsByStudentName(String studentName) {
        try (Session session = sessionFactory.openSession()) {
            Query<CrewApplication> query = session.createQuery("from CrewApplication where name = :studentName", CrewApplication.class);
            query.setParameter("studentName", studentName);
            return query.list();
        }
    }
    
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
