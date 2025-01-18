package com.example.service;

import com.example.models.CrewApplication;
import org.springframework.stereotype.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.time.LocalDateTime;
import java.util.List;
@Service
public class CrewService {

    @Autowired
    private CrewAppDao crewAppDao;
    public List<CrewApplication> getAllApplications() {
        return crewAppDao.findAllApplications();
    }

    public void updateApplicationStatus(Long applicationId, String status) {
        crewAppDao.updateApplicationStatus(applicationId, status);
    }

    public void saveInterviewSchedule(Long applicationId, String interviewDateTime) {
        crewAppDao.saveInterviewDateTime(applicationId, interviewDateTime);
    }

    public CrewApplication getApplicationById(Long applicationId) {
        return crewAppDao.findApplicationById(applicationId);
    }
    
    public List<CrewApplication> findApplicationsByStudentName(String studentName) {
        return crewAppDao.findApplicationsByStudentName(studentName);
    }
    public boolean submitApplication(CrewApplication crewApplication) {
        try {
            crewAppDao.saveCrewApplication(crewApplication);
            crewApplication.setStatus("submitted");
            return true;  // Successfully saved
        } catch (Exception e) {
            e.printStackTrace();
            return false;  // Failed to save
        }
    }
}
