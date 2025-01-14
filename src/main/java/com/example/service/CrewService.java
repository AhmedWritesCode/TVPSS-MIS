package com.example.service;

import com.example.models.CrewApplication;
import org.springframework.stereotype.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CrewService {

    @Autowired
    private CrewAppDao crewAppDao;

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
