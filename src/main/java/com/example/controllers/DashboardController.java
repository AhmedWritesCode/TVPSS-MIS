package com.example.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/dashboard")
public class DashboardController {

    @GetMapping("/studentDashboard")
    public String studentDashboard() {
        return "dashboard/studentDashboard";  
    }

    @GetMapping("/teacherDashboard")
    public String teacherDashboard() {
        return "dashboard/teacherDashboard";  
    }

    @GetMapping("/adminDashboard")
    public String adminDashboard() {
        return "dashboard/adminDashboard";  
    }
}
