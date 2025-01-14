<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>TBC TVPSS - Update Program</title>
    
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

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #ffffff;
            padding: 10px 20px;
            border-bottom: 1px solid #ddd;
        }

        .content-wrapper {
            display: flex;
            align-items: flex-start;
            gap: 20px;
        }

        .program-card {
            background-color: #6b5ae8;
            color: white;
            border-radius: 10px;
            padding: 20px; /* Adjust padding for more content spacing */
            display: flex;
            flex-direction: column;
            justify-content: flex-start;
            min-width: 250px; /* Keeps the width fixed */
            min-height: 300px; /* Adjust this value to increase the length */
            height: auto; /* Optional: Allows it to grow dynamically */
            margin: 20px;
        }

        .program-form {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            flex-grow: 1;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .form-group input, .form-group select, .form-group textarea, .form-group button {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-group button {
            background-color: #6b5ae8;
            color: white;
            border: none;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #5943c0;
        }

        button[type="submit"] {
            background-color: #b6a0e4; /* Light purple background */
            color: white; /* White text */
            border: none; /* No border */
            padding: 10px 20px; /* Padding inside the button */
            border-radius: 25px; /* Rounded corners */
            font-size: 16px; /* Font size */
            cursor: pointer; /* Pointer cursor on hover */
            display: block; /* Make the button a block-level element */
            margin: 0 auto; /* Center the button horizontally */
            text-align: center; /* Center the text inside the button */
            width: auto; /* Adjust the width according to content */
        }

        button[type="submit"]:hover {
            background-color: #9d88c7; /* Darker purple on hover */
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button-container button {
            background-color: #6b5ae8;
            color: white;
            border-radius: 25px;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            text-align: center;
            font-size: 16px;
            width: 48%;
        }

        .button-container button:hover {
            background-color: #9d88c7;
        }

        .button-container .cancel-btn {
            background-color: #e74c3c;
        }

        .button-container .cancel-btn:hover {
            background-color: #c0392b;
        }

        .button-container .back-btn {
            background-color: #2ecc71;
        }

        .button-container .back-btn:hover {
            background-color: #27ae60;
        }

    </style>
</head>
<body>
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item">Dashboard</a>
        <a href="#" class="menu-item">Main Dashboard</a>
        <a href="#" class="menu-item active">Update Program</a>
        <a href="#" class="menu-item">Crew List</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Application Review</a>
        <a href="#" class="menu-item">Version Upgrade</a>
        <a href="#" class="menu-item">Request Resource</a>
    </div>

    <div class="main-content">
        <div class="header">
            <h1>Welcome, Mr. Kamal</h1>
            <div>
                <span>Teacher</span>
                <img src="user-icon.png" alt="Profile Picture" style="width: 40px; border-radius: 50%;">
            </div>
        </div>

        <div class="content-wrapper">
            <div class="program-card">
                <h2>SMK Taman Universiti</h2>
                <p>Jalan Pendidikan, Taman Universiti, 81300 Johor Bahru, Johor</p>
            </div>

            <div class="program-form">
                <form action="${pageContext.request.contextPath}/teacher/updateProgram" method="POST">
                    <input type="hidden" name="id" value="${program.id}" />
                    <div class="form-group">
                        <label for="name">Program Name:</label>
                        <input type="text" id="name" name="name" value="${program.name}" required />
                    </div>

                    <div class="form-group">
                        <label for="description">Description:</label>
                        <textarea id="description" name="description" required>${program.description}</textarea>
                    </div>

                    <button type="submit">Update Program</button>
                </form>

                
            </div>
        </div>
    </div>
</body>
</html>



