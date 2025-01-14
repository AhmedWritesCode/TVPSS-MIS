<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TBC TVPSS - Add Program</title>
   
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

        .form-group input, .form-group select, .form-group button {
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

        .form-group-dates {
            display: flex;
            gap: 40px; /* Adjust this value to increase the space between the date fields */
        }

        .form-group-dates .form-group {
            flex: 1; /* Ensures both fields take up equal width */
        }

        .program-form {
            margin-bottom: 20px; /* Adds space below the form */
        }

        .crew-list {
            margin-top: 20px;
            padding: 15px; /* Add padding inside the box */
        }

        .crew-list h4 {
            margin-bottom: 15px; /* Space between the heading and the content */
            font-size: 24px;
            font-weight: bold;
            text-align: left; /* Left align the heading */
        }

        .crew-box {
            display: flex;
            border: 2px solid black; /* Black border around the box */
            border-radius: 10px; /* Rounded corners for the box */
            background-color: #ffffff;
            overflow: hidden; /* Prevents overflow of content */
        }

        .column {
            flex: 1; /* Each column takes equal space */
            display: flex;
            flex-direction: column;
            align-items: flex-start; /* Align items to the start */
            padding: 10px;
            gap: 10px; /* Space between elements */
            border-right: 2px solid black; /* Black border separating columns */
        }

        .column:last-child {
            border-right: none; /* Removes the right border from the last column */
        }

        .add-crew-btn {
            background-color: #90ee90; /* Light purple background */
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

        .add-crew-btn:hover {
            background-color: #9d88c7; /* Darker purple on hover */
        }

        .separator {
            width: 100%;
            border: 1px solid #000; /* Line between the headers and rows */
            margin: 0px 0; /* Space between the text and the line */
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

    </style>
</head>
<body>
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
    
    <div class="main-content">
    <h1>Add a New Program</h1>

    <!-- Display Success or Error Message -->
    <c:if test="${not empty message}">
        <div class="${statusClass}">
            <strong>${message}</strong>
            <p>${statusMessage}</p>
        </div>
    </c:if>

    <!-- Form for adding a new program -->
    <form action="${pageContext.request.contextPath}/teacher/addProgram" method="post">
        <div class="program-form">
            <div class="form-group">
                <label for="name">Program Name:</label><br>
                <input type="text" id="name" name="name" required><br><br>
            </div>

            <div class="form-group">
                <label for="description">Description:</label><br>
                <textarea id="description" name="description" rows="4" cols="50"></textarea><br><br>
            </div>

            <button type="submit">Add Program</button>
        </div>
    </form>

</div>

</body>
</html>
