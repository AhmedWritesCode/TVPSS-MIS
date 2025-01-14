package com.example.service;

import com.example.service.VideoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class VideoService {

    @Autowired
    private VideoDao videoDao;

    // Add @Transactional to ensure that this method runs in a transaction
    @Transactional
    public String uploadVideoLink(String videoLink) {
        try {
            // Save the video link through the DAO
            videoDao.saveVideoLink(videoLink);
            return "Success: Video link uploaded successfully.";
        } catch (Exception e) {
            // Handle error cases
            return "Error: Unable to upload video link. " + e.getMessage();
        }
    }
}


