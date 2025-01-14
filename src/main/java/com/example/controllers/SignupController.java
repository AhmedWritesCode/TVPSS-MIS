package com.example.controllers; 

import com.example.models.School;
import com.example.models.User;
import com.example.service.SchoolService;
import com.example.service.UserDao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
@Controller
public class SignupController {

    @Autowired
    private UserDao userDao;
    @Autowired
    private SchoolService schoolService;

    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new User("", "", "", "", "", "", "",""));
       
        List<School> schools = schoolService.getAllSchools(); // Fetch schools from the service
        model.addAttribute("schools", schools);
        
        return "signup"; // This is the name of your JSP file
    }


    @PostMapping("/signup")
    public String processSignup(@ModelAttribute("user") User user, Model model) {
        // Check if username already exists
        if (userDao.existsByUsername(user.getUsername())) {
            model.addAttribute("errorMessage", "Username already exists. Please choose a different one.");
            return "signup";
        }

        // If the user is a student or teacher, ensure the school name is provided
        if ((user.getRole().equals("student") || user.getRole().equals("teacher")) && user.getSchoolName().isEmpty()) {
            model.addAttribute("errorMessage", "Please enter your school name.");
            return "signup";
        }

        // Save the new user to the database
        userDao.saveUser(user);

        // Redirect to login page after successful signup
        return "redirect:/login";
    }
}


