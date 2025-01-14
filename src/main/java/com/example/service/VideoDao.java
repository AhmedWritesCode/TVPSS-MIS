package com.example.service;

import com.example.models.Video;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.stereotype.Repository;

@Repository
public class VideoDao {

    @PersistenceContext
    private EntityManager entityManager; // Used to interact with the database

    // Method to save a video link
    public void saveVideoLink(String videoLink) {
        Video video = new Video(videoLink); // Create a new Video entity
        entityManager.persist(video); // Save the video entity to the database
    }

    // Optional: Method to check if a video link already exists
    public boolean isVideoLinkExists(String videoLink) {
        Video video = entityManager.find(Video.class, videoLink);
        return video != null;
    }
}
