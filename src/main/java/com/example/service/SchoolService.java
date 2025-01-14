package com.example.service;

import com.example.service.SchoolDao;
import com.example.models.School;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SchoolService {

    @Autowired
    private SchoolDao schoolDao;

    // Fetch all schools
    public List<School> getAllSchools() {
        return schoolDao.getAllSchools();
    }

    // Check if a school exists by name
    public boolean getSchoolByName(String name) {
        try {
            return schoolDao.existsByName(name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Save or update a school
    public void saveSchool(School school) {
        schoolDao.saveSchool(school);
    }

    // Update school version by name
    public void updateSchoolVersion(String schoolName, String version) {
        schoolDao.updateVersion(schoolName, version);
    }
    
    public void updateSchoolFeedback(String schoolName, String feedback, String issue) {
        schoolDao.provideFeedback(schoolName, feedback, issue);
    }
    public void updateSchoolAction(String schoolName, String action) {
        // Fetch the school by name
        School school = schoolDao.findBySchoolName(schoolName);
        if (school != null) {
            school.setAction(action); // Set the new action (Approve/Reject)
            schoolDao.saveSchool(school); // Save the updated school
        } else {
            throw new RuntimeException("School not found: " + schoolName);
        }
    }
    public School getSchoolDetails(String schoolName, String version) {
        return schoolDao.findBySchoolNameAndVersion(schoolName, version);
    }
    public void updateResourceDetails(String schoolName, String resourceType, String resourceDescription) {
        schoolDao.saveResourceDetails(schoolName, resourceType, resourceDescription);
    }
    public void saveResource(String schoolName, String type, String description) {
    	schoolDao.saveResource(schoolName, type,description);
    }
    public String getAllocationBySchoolName(String schoolName) {
        return schoolDao.findAllocationBySchoolName(schoolName);
    }
    
    public void updateAllocationBySchoolName(String schoolName, String newAllocation) {
        schoolDao.updateAllocationBySchoolName(schoolName, newAllocation);
    }

}