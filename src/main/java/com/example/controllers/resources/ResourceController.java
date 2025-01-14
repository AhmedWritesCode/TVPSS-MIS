package com.example.controllers.resources;

import com.example.models.Resource;
import com.example.models.School;
import com.example.service.SchoolDao;
import com.example.service.SchoolService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/resources")
public class ResourceController {

    @Autowired
    SchoolDao schoolDao;
    
    @Autowired
    SchoolService schoolService;

    // Remove the sample resources and initialize empty list
    private List<Resource> resources;

    // List resources for a selected school
    @GetMapping
    public String listResources(Model model) {
        // Fetch the list of schools from the database
        List<School> schools = schoolService.getAllSchools();
        
        // Pass the list of schools to the model
        model.addAttribute("schools", schools);
        
        // Return the view (make sure to create a JSP or template file for it)
        return "resources/list"; // This will forward to resources/list.jsp
    }

    @GetMapping("/{school}/create")
    public String showAddAllocationForm(@PathVariable String school, Model model) {
        model.addAttribute("schoolName", school); // Pass the school name to the view
        model.addAttribute("types", List.of("Projector", "Laptop", "Whiteboard", "Tablet")); // Populate resource types
        return "resources/createAllocation"; // Return view name for the form
    }

    // Handle Add Allocation Submission and Update DB
    @PostMapping("/{school}/create")
    public String addResourceAllocation(
            @PathVariable String school, 
            @RequestParam String type, 
            @RequestParam String description, 
            Model model) {

        try {
            // Save the resource allocation to the database
            schoolService.saveResource(school, type, description);

            // Redirect to a success page or back to the main resources page
            return "redirect:/resources";
        } catch (RuntimeException e) {
            // Add error message to the model and return to the form view
            model.addAttribute("error", e.getMessage());
            return "resources/createAllocation";
        }
    }
    
    @GetMapping("/{schoolName}/view")
    public String viewAllocation(@PathVariable String schoolName, Model model) {
        // Fetch allocation details from the database
        String allocation = schoolService.getAllocationBySchoolName(schoolName);

        // Add attributes to the model
        model.addAttribute("schoolName", schoolName);
        model.addAttribute("allocation", allocation);

        // Return the view page
        return "resources/viewAllocation"; // Maps to viewAllocation.jsp
    }

    @GetMapping("/{schoolName}/edit")
    public String editAllocation(@PathVariable String schoolName, Model model) {
        String allocation = schoolService.getAllocationBySchoolName(schoolName); // Get current allocation
        model.addAttribute("schoolName", schoolName);
        model.addAttribute("allocation", allocation); // Send current allocation to the view
        return "resources/editAllocation"; // Path to JSP file for editing allocation
    }

    // POST method to handle allocation update
    @PostMapping("/{schoolName}/edit")
    public String updateAllocation(@PathVariable String schoolName, 
                                   @RequestParam("allocation") String allocation, 
                                   Model model) {
        try {
            // Save the resource allocation to the database
            schoolService.updateAllocationBySchoolName(schoolName, allocation);

            // Redirect to the main resources page after successful update
            return "redirect:/resources";
        } catch (RuntimeException e) {
            // Add error message to the model and return to the form view
            model.addAttribute("error", "Error updating allocation: " + e.getMessage());
            model.addAttribute("schoolName", schoolName);
            model.addAttribute("allocation", allocation); // Send the entered allocation value back to the view

            return "resources/editAllocation"; // Redirect back to the edit allocation page in case of error
        }
    }



    
    // Handle Request Resource function
    @GetMapping("/verify")
    public String showVerifyForm() {
        return "resources/verify"; // This will forward to verify.jsp
    }

    @PostMapping("/verify")
    public String handleVerification(
            @RequestParam String school,
            @RequestParam String version,
            Model model) {

        // Fetch the school by name and version
        School schoolDetails = schoolDao.findBySchoolNameAndVersion(school, version);

        // Check if the school and version exist
        if (schoolDetails != null) {
            // Proceed to the next page if found
            model.addAttribute("school", schoolDetails.getSchoolName());
            model.addAttribute("version", schoolDetails.getVersion());
            return "resources/requestResource"; // Proceed to the request resource page
        } else {
            // School not found, show error message
            model.addAttribute("error", "School and version combination not found.");
            return "resources/verify"; // Stay on the same page and show error message
        }
    }

    @PostMapping("/requestResource")
    public String handleRequestResource(
            @RequestParam String school,
            @RequestParam String version,
            @RequestParam String type,
            @RequestParam String description,
            Model model) {
        
        // Save the resource details into the database
        schoolService.updateResourceDetails(school, type, description);

        // Display the submitted request details and success message
        model.addAttribute("school", school);
        model.addAttribute("version", version);
        model.addAttribute("type", type);
        model.addAttribute("description", description);
        model.addAttribute("message", "Your resource request has been submitted successfully!");

        // Stay on the same page to show the success message and details
        return "resources/requestResource"; // Stay on the same page
    }
}