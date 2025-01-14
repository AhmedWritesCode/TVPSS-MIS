package com.example.controllers;

import com.example.models.User;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String showLoginForm() {
        return "login"; // login.jsp view
    }
    @PostMapping("/login")
    public String processLogin(@RequestParam("username") String username,
                               @RequestParam("password") String password,
                               Model model) {
        // Fetch user by username instead of email
        User user = userService.getUserByUsername(username);

        if (user != null && user.getPassword().equals(password)) {
            // Redirect to dashboard based on role
            switch (user.getRole()) {
                case "student":
                    return "redirect:/dashboard/studentDashboard";
                case "teacher":
                    return "redirect:/dashboard/teacherDashboard";
                case "admin":
                    return "redirect:/dashboard/adminDashboard";
                default:
                    model.addAttribute("errorMessage", "Invalid role.");
                    return "login";
            }
        }

        // Show error message if login fails
        model.addAttribute("errorMessage", "Invalid username or password.");
        return "login";  // Return to login page if login fails
    }


      

}






