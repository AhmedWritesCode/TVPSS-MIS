package com.example.controllers.admin;

import com.example.models.School;
import com.example.service.*;
import com.example.models.SchoolVersionUpgrade;
import com.example.models.User;
import com.example.models.certification;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
    private SchoolService schoolService;
    @Autowired
    private TVPSSProgramService programService;
    @Autowired
    private UserService userService;
    // UC006: View and manage reports related to the TVPSS program
    
    @GetMapping("/viewReport")
    public String viewReport( Model model) {
    	  List<School> schools = schoolService.getAllSchools();
          model.addAttribute("schools", schools);
          model.addAttribute("programs", programService.getAllPrograms());
        return "admin/viewReportDetail"; // Render the viewReportDetail.jsp
    }
   
    @GetMapping("/generateCertifications")
    public String showGenerateCertificationsPage(Model model) {
        // Fetching all users from the database
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);

        return "admin/generateCertifications"; // Returning the view
    }

    @PostMapping("/generateCertifications")
    public String generateCertification(@RequestParam String username, Model model) {
        // Call the service to update certification status
        userService.generateCertification(username);

        // Fetch updated list of users
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);

        // Optionally, add a success message to show that certification is in progress
        model.addAttribute("message", "Certification generation in progress for " + username);

        return "admin/generateCertifications"; // Refresh the page with updated data
    }


    @GetMapping("/provideFeedback")
    public String requestTVPSSFeedback(Model model) {
        // Add initial empty data for the feedback form
        model.addAttribute("schoolName", "");
        model.addAttribute("feedback", "");
        model.addAttribute("issue", "");
        model.addAttribute("message", ""); // Initialize message
        model.addAttribute("error", "");   // Initialize error
        return "admin/provideFeedback"; // Maps to the JSP file for feedback
    }

    @PostMapping("/provideFeedback")
    public String submitTVPSSFeedbackRequest(@RequestParam("schoolName") String schoolName,
                                             @RequestParam("feedback") String feedback,
                                             @RequestParam("issue") String issue,
                                             Model model) {
        // Check if the school exists
        if (!schoolService.getSchoolByName(schoolName)) {
            // Add error message and prefill form inputs
            model.addAttribute("error", "School not found!");
            model.addAttribute("schoolName", schoolName);
            model.addAttribute("feedback", feedback);
            model.addAttribute("issue", issue);
            return "admin/provideFeedback"; // Stay on the same page
        }

        // Update the school's feedback and issue
        schoolService.updateSchoolFeedback(schoolName, feedback, issue);

        // Add a success message and clear error
        model.addAttribute("message", "Feedback submitted successfully!");
        model.addAttribute("error", ""); // Clear any previous errors

        // Keep the school name and feedback for confirmation
        model.addAttribute("schoolName", schoolName);
        model.addAttribute("feedback", feedback);
        model.addAttribute("issue", issue);

        // Stay on the same page
        return "admin/provideFeedback";
    }
    @GetMapping("/sendNotification")
    public String sendNotifications() {
        // Logic for sending email and notifications (e.g., using JavaMailSender or other services)
        return "admin/sendNotification"; // Map to the notifications page
    }
    @PostMapping("/sendNotification")
    public String sendNotification(
            @RequestParam("email") String email,
            @RequestParam("subject") String subject,
            @RequestParam("body") String body,
            Model model
    ) {
        // Create the notification content
        String notification = "Subject: " + subject + "\n" + "Body: " + body;

        try {
            // Update the notification in the database
            userService.updateNotification(email, notification);
            model.addAttribute("message", "Notification sent successfully to " + email + "!");
            model.addAttribute("messageType", "success"); // Use for styling
        } catch (Exception e) {
            model.addAttribute("message", "Failed to send notification. Please try again.");
            model.addAttribute("messageType", "error"); // Use for styling
        }

        return "admin/sendNotification"; // Reload the same page
    }

    // Module 4 - TVPSS Management (Existing Methods)

    @GetMapping("/monitor")
    public String monitorUser(Model model) {
        // Fetch users and other necessary data
        List<User> users = userService.getAllUsers();
        model.addAttribute("users", users);
        return "admin/monitor"; // Return the same "admin/monitor" view
    }
    @GetMapping("/approveSchoolVersion")
    public String approveSchoolVersion(Model model) {
        try {
            List<School> schools = schoolService.getAllSchools();
            for (School school : schools) {
                if (school.getAction() == null || school.getAction().isEmpty()) {
                    school.setAction(""); // Set default action if null or empty
                }
            }
            model.addAttribute("schools", schools);
        } catch (Exception e) {
            e.printStackTrace();
            model.addAttribute("message", "Failed to load schools. Please try again.");
            model.addAttribute("messageType", "error");
        }
        return "admin/approveSchoolVersion";
    }



    @PostMapping("/approveVersionUpgrade")
    public String approveVersionUpgrade(@RequestParam("schoolName") String schoolName, 
                                        @RequestParam("action") String action, 
                                        RedirectAttributes redirectAttributes) {
        try {
            // Update the action in the database
            schoolService.updateSchoolAction(schoolName, action);
            redirectAttributes.addFlashAttribute("message", "Action updated successfully for " + schoolName + "!");
            redirectAttributes.addFlashAttribute("messageType", "success");
        } catch (Exception e) {
            System.err.println("Error updating school action: " + e.getMessage());
            e.printStackTrace();
            redirectAttributes.addFlashAttribute("message", "Failed to update action for " + schoolName + ". Please try again.");
            redirectAttributes.addFlashAttribute("messageType", "error");
        }
        return "redirect:/admin/approveSchoolVersion"; // Redirect back to the approval page
    }

    @GetMapping("/trackProgress")
    public String trackSchoolProgress(Model model) {
        // Fetch school list from the service
        List<School> schools = schoolService.getAllSchools();
        model.addAttribute("schools", schools);
        return "admin/trackProgress"; // Maps to your JSP
    }

    @GetMapping("/trackProgressDetail")
    public String trackProgressDetail() {
        // Directly maps to the static trackProgressDetail.jsp
        return "admin/trackProgressDetail";
    }
    
    @GetMapping("/monitorUser")
    public String monitorUser(
        @RequestParam(value = "userId", required = true) String userId,
        Model model
    ) {
        // Temporary static data
        model.addAttribute("userName", "Sample User");
        model.addAttribute("averageTime", "2 Hours (per week)");
        model.addAttribute("totalActivities", "32 (in 6 months)");
        model.addAttribute("activitiesOnProgress", 2);
        model.addAttribute("completionPercentage", 45);

        return "admin/monitoruser"; // Renders monitoruser.jsp
    }

}
