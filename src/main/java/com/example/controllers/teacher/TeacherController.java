package com.example.controllers.teacher;

import com.example.models.School;
import com.example.models.TVPSSProgram;
import com.example.models.User;
import com.example.service.SchoolService;
import com.example.service.TVPSSProgramService;
import com.example.service.UserService;
import com.example.models.CrewApplication;
import com.example.service.CrewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
@Controller
@RequestMapping("/teacher")
public class TeacherController {

    @Autowired
    private TVPSSProgramService programService;
    @Autowired 
    private SchoolService schoolService;
    @Autowired
    private UserService userService;
    @Autowired
    private CrewService crewService;

 @GetMapping("/studentApplications")
    public String listStudentApplications(Model model) {
        List<CrewApplication> applications = crewService.getAllApplications();
        System.out.println("Applications List Size: " + applications.size()); // 打印列表大小
        for (CrewApplication application : applications) {
            System.out.println("Application ID: " + application.getId() + ", Name: " + application.getName() + ", Interview Date Time: " + application.getInterviewDateTime());
        }
        model.addAttribute("applications", applications);
        return "teacher/studentApplicationList";
    }
    @PostMapping("/approveApplication")
    public String approveApplication(@RequestParam("applicationId") Long applicationId) {
        crewService.updateApplicationStatus(applicationId, "Approved");
        return "redirect:/teacher/studentApplications";
    }

    @PostMapping("/rejectApplication")
    public String rejectApplication(@RequestParam("applicationId") Long applicationId) {
        crewService.updateApplicationStatus(applicationId, "Rejected");
        return "redirect:/teacher/studentApplications";
    }

    @PostMapping("/pendingApplication")
    public String pendingApplication(@RequestParam("applicationId") Long applicationId) {
        crewService.updateApplicationStatus(applicationId, "Pending");
        return "redirect:/teacher/studentApplications";
    }
    
    @PostMapping("/saveInterviewSchedule")
    public String saveInterviewSchedule(@RequestParam("applicationId") Long applicationId,
                                        @RequestParam("interviewDateTime") String interviewDateTimeString) {
        crewService.saveInterviewSchedule(applicationId, interviewDateTimeString);
        return "redirect:/teacher/studentApplications";
    }

    @GetMapping("/manageDashboard")
    public String manageDashboard(Model model) {
        model.addAttribute("programs", programService.getAllPrograms());
        return "teacher/schoolDashboard";
    }
    

    @GetMapping("/addProgram")
    public String addProgramForm(Model model) {
        model.addAttribute("program", new TVPSSProgram()); // Provide an empty object for adding
        return "teacher/addProgramForm"; // Form for adding a new program
    }

    // Handle Add Program Form Submission
    @PostMapping("/addProgram")
    public String addProgram(@ModelAttribute TVPSSProgram program, Model model) {
        boolean isAdded = programService.addProgram(program);

        if (isAdded) {
            model.addAttribute("message", "Program added successfully.");
            model.addAttribute("statusClass", "success");
            model.addAttribute("statusMessage", "The new program has been added to the system.");
        } else {
            model.addAttribute("message", "Failed to add program.");
            model.addAttribute("statusClass", "failure");
            model.addAttribute("statusMessage", "An error occurred while adding the program. Please try again.");
        }

        return "teacher/programAddStatus"; // Return to the status page after adding
    }
    // Display Update Form with Pre-filled Data
    @GetMapping("/updateProgram")
    public String updateProgramForm(Long id, Model model) {
        TVPSSProgram program = programService.getProgramById(id);
        model.addAttribute("program", program); // Pass the program to the form for editing
        return "teacher/updateProgramForm"; // Use the same form as for adding
    }
    // Handle Update Program Form Submission
    @PostMapping("/updateProgram")
    public String updateProgram(@ModelAttribute TVPSSProgram program, Model model) {
        boolean isUpdated = programService.updateProgram(program);

        if (isUpdated) {
            model.addAttribute("message", "Program updated successfully.");
            model.addAttribute("statusClass", "success");
            model.addAttribute("statusMessage", "The program has been updated successfully.");
        } else {
            model.addAttribute("message", "Failed to update program.");
            model.addAttribute("statusClass", "failure");
            model.addAttribute("statusMessage", "An error occurred while updating the program. Please try again.");
        }

        return "teacher/programStatus"; // Show status after updating
    }

 

    // This method handles the "View Program" page and lists all programs
    @GetMapping("/requestUpgrade")
    public String requestTVPSSUpgrade(Model model) {
        TVPSSProgram school;
		// Add data specific to the teacher's school for the form
    	 model.addAttribute("schoolName","");
         model.addAttribute("currentVersion","");
        return "teacher/requestUpgrade"; // Maps to the new JSP file
    }

    @PostMapping("/submitUpgradeRequest")
    public String submitTVPSSUpgradeRequest(@RequestParam("schoolName") String schoolName,
                                            @RequestParam("version") String version,
                                            Model model) {
        if (!schoolService.getSchoolByName(schoolName)) {
            model.addAttribute("error", "School not found!");
            return "teacher/requestUpgrade";
        }

        // Update the school's version
        schoolService.updateSchoolVersion(schoolName, version);

        // Process the upgrade request
        System.out.println("Upgrade request submitted by teacher for: " + schoolName + ", version: " + version);

        // Add a success message
        model.addAttribute("message", "Your upgrade request has been submitted successfully!");
        return "teacher/upgradeRequestStatus"; // Map to a confirmation/status JSP
    }
    
    @GetMapping("/viewProgram")
    public String viewProgram(Model model) {
        List<TVPSSProgram> programs = programService.getAllPrograms();
        model.addAttribute("programs", programs);
        return "teacher/viewProgram"; // The JSP page for viewing the list of programs
    }
    
    @GetMapping("/deleteProgram")
    public String deleteProgram(@RequestParam Long id, Model model) {
        boolean isDeleted = programService.deleteProgram(id);

        if (isDeleted) {
            model.addAttribute("message", "Program deleted successfully.");
            model.addAttribute("statusClass", "success");
            model.addAttribute("statusMessage", "The program has been deleted successfully.");
        } else {
            model.addAttribute("message", "Failed to delete program.");
            model.addAttribute("statusClass", "failure");
            model.addAttribute("statusMessage", "An error occurred while deleting the program. Please try again.");
        }

        return "teacher/programStatus"; // Show status after deleting
    }
}
