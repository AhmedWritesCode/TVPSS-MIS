package com.example.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Entity
@Table(name = "school")
public class School {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "school_id")
    private int schoolId;

    @Column(name = "school_name", nullable = false, length = 255)
    private String schoolName;

    @Column(nullable = false, length = 255)
    private String address;

    @Column(nullable = false, length = 100)
    private String district;

    @Column(name = "contact_person_name", length = 255)
    private String contactPersonName;

    @Column(name = "contact_email", length = 255)
    private String contactEmail;

    @Column(name = "contact_phone", length = 20)
    private String contactPhone;

    @Column(nullable = false)
    private String status;

    @Column(name = "date")
    private Date date;  // Add date field

    @Column(name = "progress")
    private int progress;  // Add progress field
    
    @Column(name = "version", nullable = false, length = 50)
    private String version; // New field
    
    @Column(name = "Feedback", nullable = false, length = 50)
    private String feedback; // New field
    @Column(name = "Issue", nullable = false, length = 50)
    private String issue; // New field
    
    @Column(name="action", nullable = false, length = 50)
    private String action;
    
    @Column(name="resourcetype", nullable = false, length = 50)
    private String resourcetype;
    
    @Column(name="resourcedescription", nullable = false, length = 50)
    private String resourcedescription;
    
    @Column(name="allocation", nullable = false, length = 50)
    private String allocation;
    

    // Constructors
    public School() {}

    public School(String schoolName, String address, String district, String contactPersonName,
                  String contactEmail, String contactPhone, String status, Date date, int progress, String version, String feedback, String issue, String action, String resourcetype, String resourcedescription, String Allocation) {
        this.schoolName = schoolName;
        this.address = address;
        this.district = district;
        this.contactPersonName = contactPersonName;
        this.contactEmail = contactEmail;
        this.contactPhone = contactPhone;
        this.status = status;
        this.date = date;
        this.progress = progress;
        this.version = version;
        this.feedback = feedback;
        this.issue = issue;
        this.action = action;
        this.resourcetype= resourcetype;
        this.resourcedescription= resourcedescription;
        this.allocation = allocation;
        
        
    }

    // Getters and Setters
    public int getSchoolId() {
        return schoolId;
    }

    public void setSchoolId(int schoolId) {
        this.schoolId = schoolId;
    }

    public String getSchoolName() {
        return schoolName;
    }

    public void setSchoolName(String schoolName) {
        this.schoolName = schoolName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getContactPersonName() {
        return contactPersonName;
    }

    public void setContactPersonName(String contactPersonName) {
        this.contactPersonName = contactPersonName;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactPhone() {
        return contactPhone;
    }

    public void setContactPhone(String contactPhone) {
        this.contactPhone = contactPhone;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getProgress() {
        return progress;
    }

    public void setProgress(int progress) {
        this.progress = progress;
    }
    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }
    public String getFeedback() {
        return feedback;
    }
    public String getIssue() {
        return issue;
    }
    
    public void setFeedback (String feedback) {
    	this.feedback = feedback;
    }
    public void setIssue (String issue) {
    	this.issue = issue;
    }
    
    public String getAction() {
    	return action;
    }
    
    public void setAction (String action) {
    	this.action = action;
    }
    
    public String getResourceType() {
    	return resourcetype;
    }
    
    public void setResourceType(String resourcetype) {
    	this.resourcetype = resourcetype;
    }
    
    public String getResourceDescription() {
    	return resourcedescription;
    }
    
    public void setResourceDescription(String resourcedescription) {
    	this.resourcedescription = resourcedescription;
    }
    
    public String getAllocation() {
    	return allocation;
    }
    
    public void setAllocation(String allocation) {
    	this.allocation = allocation;
    }
    
    
    // Overriding toString method
    @Override
    public String toString() {
        return "School{" +
                "schoolId=" + schoolId +
                ", schoolName='" + schoolName + '\'' +
                ", address='" + address + '\'' +
                ", district='" + district + '\'' +
                ", contactPersonName='" + contactPersonName + '\'' +
                ", contactEmail='" + contactEmail + '\'' +
                ", contactPhone='" + contactPhone + '\'' +
                ", status='" + status + '\'' +
                ", date=" + date +
                ", progress=" + progress +
                ", version='" + version + '\'' +
                ", feedback='" + feedback+ '\''+
                ", issue='"+ issue + '\''+ 
                ", action='"+ action + '\''+
                ", resourcetype='"+ resourcetype + '\''+
                ", resourcedescription='"+ resourcedescription + '\''+
                ", allocation ='" + allocation + '\''+
                '}';
    }
}
