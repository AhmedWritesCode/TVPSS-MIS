<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TBC TVPSS - Dashboard</title>
    <style>
        /* General styles */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            background-color: #f4f6f9;
            color: #333;
        }

        .sidebar {
            width: 260px;
            background-color: #2d2d2d;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            padding-left: 20px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: 600;
        }

        .menu-item {
            padding: 12px 20px;
            margin: 10px 0;
            color: #ccc;
            text-decoration: none;
            display: block;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .menu-item:hover, .menu-item.active {
            background-color: #464646;
            color: white;
        }

        .main-content {
            margin-left: 260px;
            padding: 40px;
        }

        /* Heading style */
        h1 {
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 10px;
            color: #333;
        }

        /* Success/Error Message */
        .message-box {
            padding: 15px;
            background-color: #e7f4e7;
            border-left: 5px solid #4caf50;
            margin-bottom: 20px;
            color: #388e3c;
            border-radius: 5px;
        }

        .message-box.error {
            background-color: #fce4e4;
            border-left-color: #f44336;
            color: #d32f2f;
        }

        /* Program form */
        .program-form {
            background-color: #fff;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 30px;
        }

        .program-form h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #6b5ae8;
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #555;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 12px;
            border: 2px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            margin-top: 8px;
            box-sizing: border-box;
        }

        .form-group textarea {
            resize: vertical;
        }

        button[type="submit"] {
            background-color: #6b5ae8;
            color: white;
            border: none;
            padding: 12px 24px;
            border-radius: 25px;
            font-size: 18px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #5943c0;
        }

        /* Program list styles */
        .program-list {
            margin-top: 40px;
        }

        .program-list h2 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #333;
        }

        .program-list ul {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .program-list li {
            background-color: #fff;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 15px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }

        .program-list li:hover {
            transform: translateY(-5px);
        }

        .program-list li strong {
            font-size: 18px;
            color: #6b5ae8;
        }

        .program-list li p {
            font-size: 16px;
            color: #555;
        }

        /* Footer */
        footer {
            text-align: center;
            font-size: 14px;
            color: #777;
            margin-top: 50px;
        }
    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item active">Dashboard</a>
        <a href="#" class="menu-item">Main Dashboard</a>
        <a href="#" class="menu-item">Add Program</a>
        <a href="#" class="menu-item">Update Program</a>
        <a href="#" class="menu-item">Crew List</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Application Review</a>
        <a href="#" class="menu-item">Version Upgrade</a>
        <a href="#" class="menu-item">Request Resource</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <h1>Welcome to the Dashboard</h1>

        <!-- Programs List -->
        <div class="program-list">
            <h2>Programs List</h2>
            <ul>
                <!-- Iterate through programs and display their details -->
                <c:forEach var="program" items="${programs}">
                    <li>
                        <strong>Program Name:</strong> ${program.name} <br>
                        <strong>Description:</strong> ${program.description}
                    </li>
                </c:forEach>
            </ul>
        </div>
    </div>

</body>
</html>
