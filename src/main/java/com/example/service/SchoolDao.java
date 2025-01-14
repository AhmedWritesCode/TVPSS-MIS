package com.example.service;

import com.example.models.School;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SchoolDao {

    @Autowired
    private SessionFactory sessionFactory;

    // Save or update school
    public void saveSchool(School school) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            session.saveOrUpdate(school);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error saving school", e);
        }
    }

    // Check if a school exists by name
    public boolean existsByName(String name) {
        try (Session session = sessionFactory.openSession()) {
            Long count = session.createQuery("select count(s) from School s where s.schoolName = :name", Long.class)
                                .setParameter("name", name)
                                .uniqueResult();
            return count != null && count > 0;
        } catch (Exception e) {
            throw new RuntimeException("Error checking school by name", e);
        }
    }
 // Fetch a school by name
    public School findBySchoolName(String schoolName) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from School where schoolName = :name", School.class)
                          .setParameter("name", schoolName)
                          .uniqueResult();
        } catch (Exception e) {
            throw new RuntimeException("Error fetching school by name", e);
        }
    }

 // Fetch a school by name and version
    public School findBySchoolNameAndVersion(String schoolName, String version) {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from School where schoolName = :name and version = :version", School.class)
                          .setParameter("name", schoolName)
                          .setParameter("version", version)
                          .uniqueResult();
        } catch (Exception e) {
            throw new RuntimeException("Error fetching school by name and version", e);
        }
    }
    public void saveResourceDetails(String schoolName, String resourceType, String resourceDescription) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();

            School school = session.createQuery("from School where schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();

            if (school != null) {
                school.setResourceType(resourceType);  // Set resource type
                school.setResourceDescription(resourceDescription);  // Set resource description
                session.update(school);  // Save the updated school entity
            } else {
                throw new RuntimeException("School not found");
            }

            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating resource details", e);
        }
    }

    // Update the version of a school
    public void updateVersion(String schoolName, String version) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            School school = session.createQuery("from School where schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();
            if (school != null) {
                school.setVersion(version);
                session.update(school);
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating school version", e);
        }
    }
    public void provideFeedback(String schoolName, String feedback, String issue) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();
            
            // Fetch the school by name
            School school = session.createQuery("from School where schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();
            
            if (school != null) {
                // Update fields
                school.setFeedback(feedback);
                school.setIssue(issue);
                session.update(school);
            } else {
                throw new RuntimeException("School not found");
            }

            // Commit transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) transaction.rollback();
            throw new RuntimeException("Error updating school feedback and issue", e);
        }
    }

    // Fetch all schools
    public List<School> getAllSchools() {
        try (Session session = sessionFactory.openSession()) {
            return session.createQuery("from School", School.class).list();
        } catch (Exception e) {
            throw new RuntimeException("Error fetching all schools", e);
        }
    }
    
    public void saveResource(String schoolName, String type, String description) {
        Transaction transaction = null;
        try (Session session = sessionFactory.openSession()) {
            transaction = session.beginTransaction();

            // Fetch the school by its name
            School school = session.createQuery("FROM School WHERE schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();

            if (school != null) {
                // Combine the resource type and description into a single string (allocation)
                String allocation = "Type: " + type + " | Description: " + description;

                // Set the combined allocation value in the school object
                school.setAllocation(allocation);

                // Save the updated school object back into the database
                session.update(school);
            } else {
                throw new RuntimeException("School not found with name: " + schoolName);
            }

            // Commit the transaction
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();  // Rollback if any error occurs
            }
            throw new RuntimeException("Error saving resource allocation for school: " + schoolName, e);
        }
    }
    public String findAllocationBySchoolName(String schoolName) {
        try (Session session = sessionFactory.openSession()) {
            School school = session.createQuery("FROM School WHERE schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();

            // Return the allocation value if the school exists
            return (school != null) ? school.getAllocation() : null;
        }
    }
    public void updateAllocationBySchoolName(String schoolName, String newAllocation) {
        try (Session session = sessionFactory.openSession()) {
            // Start a transaction
            session.beginTransaction();

            // Fetch the school by schoolName
            School school = session.createQuery("FROM School WHERE schoolName = :name", School.class)
                                   .setParameter("name", schoolName)
                                   .uniqueResult();

            // If the school exists, update its allocation
            if (school != null) {
                school.setAllocation(newAllocation); // Set the new allocation
                session.update(school); // Save the updated school object
            }

            // Commit the transaction
            session.getTransaction().commit();
        } catch (Exception e) {
            // Handle exceptions
            e.printStackTrace();
        }
    }
}