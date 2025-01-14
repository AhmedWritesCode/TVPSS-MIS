package com.example.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.models.TVPSSProgram;

import java.util.List;

@Service
public class TVPSSProgramService {

    @Autowired
    private TVPSSProgramDao tvpssProgramDao;

    // Method to add program
    public boolean addProgram(TVPSSProgram program) {
        return tvpssProgramDao.addProgram(program);
    }

    // Method to update program
    public boolean updateProgram(TVPSSProgram program) {
        return tvpssProgramDao.updateProgram(program);
    }

    // Method to get all programs
    public List<TVPSSProgram> getAllPrograms() {
        return tvpssProgramDao.getAllPrograms();
    }

    // Method to get program by ID
    public TVPSSProgram getProgramById(Long id) {
        return tvpssProgramDao.getProgramById(id);
    }
}
