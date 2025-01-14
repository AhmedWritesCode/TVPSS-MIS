package com.example.models;

public class Resource {
    private Long id;
    private String name;
    private String type;
    private String description;
    private String school; // Field for school association
    private String region;
    private int version;
    
    // No-argument constructor (required for frameworks like Spring)
    public Resource() {
    }

    // Parameterized constructor
    public Resource(Long id, String name, String type, String description, String school, String region) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.description = description;
        this.school = school;
        this.region = region;
    }

    public Resource(Long id, String name, String type, String description, String school, String region, int version) {
        this.id = id;
        this.name = name;
        this.type = type;
        this.description = description;
        this.school = school;
        this.region = region;
        this.version = version;
    }
    
    // Getters and setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getSchool() {
        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

	public String getRegion() {
		return region;
	}
	
	public void setRegion(String region) {
		this.region = region;
	}
	
	public int getVersion() {
		return version;
	}
	
	public void setVersion(int version) {
		this.version = version;
	}
}