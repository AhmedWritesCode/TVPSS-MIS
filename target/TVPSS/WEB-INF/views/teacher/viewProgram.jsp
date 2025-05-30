<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Program</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
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

        .container {
            width: 70%;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        h3 {
            color: #007bff;
            margin-bottom: 10px;
        }
        p {
            color: #555;
            font-size: 16px;
            line-height: 1.6;
            margin-bottom: 30px;
        }
        
        /* Updated table styles */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            border-radius: 10px;
            overflow: hidden; /* Ensures rounded corners are visible */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Adds shadow for better depth */
        }
        th, td {
            padding: 15px 20px;
            text-align: left;
            border: 1px solid #ddd;
            font-size: 16px;
        }
        th {
            background-color: #6b5ae8;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9; /* Alternates row colors */
        }
        tr:hover {
            background-color: #f2f2f2; /* Highlight row on hover */
        }
        td a {
            background-color: #007bff;
            color: white;
            padding: 8px 16px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }
        td a:hover {
            background-color: #0056b3;
        }
        .button-container {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 30px;
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
        <div class="container">
            <h2>Program Details</h2>

            <!-- Program Details (if individual program view) -->
            <c:if test="${not empty program}">
                <h3>${program.name}</h3>
                <p>${program.description}</p>
            </c:if>

            <!-- Program List -->
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="program" items="${programs}">
                        <tr>
                            <td>${program.id}</td>
                            <td>${program.name}</td>
                            <td>${program.description}</td>
                            <td>
                                <!-- Update Program Button -->
                                <a href="${pageContext.request.contextPath}/teacher/updateProgram?id=${program.id}">Edit</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <!-- Back to Add Program -->
            <a href="${pageContext.request.contextPath}/teacher/addProgram" class="button-container">Add New Program</a>
        </div>
    </div>

</body>
</html>




