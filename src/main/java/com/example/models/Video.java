package com.example.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "videos")  // Create a new table for videos
public class Video {

    @Id
    private String videoLink; // Video link is the primary key

    public Video() {}

    public Video(String videoLink) {
        this.videoLink = videoLink;
    }

    public String getVideoLink() {
        return videoLink;
    }

    public void setVideoLink(String videoLink) {
        this.videoLink = videoLink;
    }
}
