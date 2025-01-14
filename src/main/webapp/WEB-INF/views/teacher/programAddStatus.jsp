<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Program Add Status</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
        }

        .sidebar {
            width: 250px;
            background-color: #101010;
            height: 100vh;
            position: fixed;
            color: white;
            display: flex;
            flex-direction: column;
            padding: 10px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .menu-item {
            padding: 10px;
            margin: 5px 0;
            color: #ccc;
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .menu-item:hover, .menu-item.active {
            background-color: #1f1f1f;
            color: white;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        .status-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            text-align: center;
            margin: 0 auto;
        }

        .status-container h1 {
            color: #444;
        }

        .status-container p {
            font-size: 18px;
        }

        .status-container .success {
            color: #5cb85c;
        }

        .status-container .failure {
            color: #d9534f;
        }

        .status-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }

        .status-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item">Dashboard</a>
        <a href="#" class="menu-item">Main Dashboard</a>
        <a href="#" class="menu-item">Add Program</a>
        <a href="#" class="menu-item">Update Program</a>
        <a href="#" class="menu-item">Crew List</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Application Review</a>
        <a href="#" class="menu-item">Version Upgrade</a>
        <a href="#" class="menu-item">Request Resource</a>
    </div>
    
    <div class="main-content">
        <div class="status-container">
            <h1 class="${statusClass}">${message}</h1>
            <p>${statusMessage}</p>

            <!-- Back to Program List -->
            <a href="${pageContext.request.contextPath}/teacher/viewProgram">Back to Program List</a>
        </div>
    </div>

</body>
</html>

