package com.example.controllers.student;

import com.example.models.CrewApplication;
import com.example.service.CrewService;
import com.example.service.VideoService;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/student")
public class studentController {

    @Autowired
    private VideoService videoService;

    @Autowired
    private CrewService crewService;

    // Show the form for uploading video links
    @GetMapping("/uploadVideoLinksForm")
    public String showUploadVideoLinksForm() {
        return "student/uploadVideoLinks"; // JSP for uploading video links
    }

    // Show the page for creating a video
    @GetMapping("/createVideo")
    public String showCreateVideoPage() {
        return "student/createVideo"; // JSP for creating a video
    }

    @PostMapping("/uploadVideoLinks")
    public String uploadVideoLinks(@RequestParam("videoLink") String videoLink, Model model) {
        String resultMessage = videoService.uploadVideoLink(videoLink);
        model.addAttribute("message", resultMessage);

        if (resultMessage.startsWith("Success")) {
            model.addAttribute("videoLink", videoLink);
        }

        return "student/uploadStatus"; // JSP for status after uploading video
    }

    @GetMapping("/submitCrewApplication")
    public String showCrewApplicationForm(Model model) {
        model.addAttribute("crewApplication", new CrewApplication());
        return "student/applicationStatus";  // Make sure the form is rendered here
    }

    @PostMapping("/submitCrewApplication")
    public String submitCrewApplication(@ModelAttribute CrewApplication crewApplication, Model model) {
        // Handle form submission logic
        boolean isSubmitted = crewService.submitApplication(crewApplication);
        if (isSubmitted) {
            // Redirect to a success page to prevent form resubmission
            return "redirect:/student/applicationSuccess";
        } else {
            model.addAttribute("message", "Failed to submit crew application.");
            return "student/applicationStatus"; // Stay on the form page if submission fails
        }
    }

    // Add a new method to handle the success page
    @GetMapping("/applicationSuccess")
    public String showApplicationSuccessPage(Model model) {
        model.addAttribute("message", "Crew application submitted successfully.");
        return "student/success"; // JSP for success message
    }
}
