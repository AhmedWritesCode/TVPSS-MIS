package com.example.models;

public class SchoolVersionUpgrade {
    private String schoolName;
    private String status;
    private String date;

    // Constructor
    public SchoolVersionUpgrade(String schoolName, String status, String date) {
        this.schoolName = schoolName;
        this.status = status;
        this.date = date;
    }

    // Getters and Setters
    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
