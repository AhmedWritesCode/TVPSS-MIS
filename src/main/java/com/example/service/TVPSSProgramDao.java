package  com.example.service;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.example.models.TVPSSProgram;

@Repository
public class TVPSSProgramDao {

    @Autowired
    private SessionFactory sessionFactory;

    // Method to add a program
    public boolean addProgram(TVPSSProgram program) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.save(program); // Save program
            transaction.commit();
            return true;
        } catch (Exception e) {
            transaction.rollback();
            return false;
        } finally {
            session.close();
        }
    }

    // Method to update a program
    public boolean updateProgram(TVPSSProgram program) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
            session.update(program); // Update program
            transaction.commit();
            return true;
        } catch (Exception e) {
            transaction.rollback();
            return false;
        } finally {
            session.close();
        }
    }

    // Method to fetch all programs
    public List<TVPSSProgram> getAllPrograms() {
        Session session = sessionFactory.openSession();
        try {
            return session.createQuery("from TVPSSProgram", TVPSSProgram.class).list();
        } finally {
            session.close();
        }
    }

    // Method to fetch a program by ID
    public TVPSSProgram getProgramById(Long id) {
        Session session = sessionFactory.openSession();
        try {
            return session.get(TVPSSProgram.class, id);
        } finally {
            session.close();
        }
    }
    
    public boolean deleteProgram(Long id) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        try {
            TVPSSProgram program = session.get(TVPSSProgram.class, id);
            if (program != null) {
                session.delete(program);
                transaction.commit();
                return true;
            }
            return false;
        } catch (Exception e) {
            transaction.rollback();
            return false;
        } finally {
            session.close();
        }
    }
}

