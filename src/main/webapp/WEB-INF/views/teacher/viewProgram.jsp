<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- view programs -->
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
        display: flex;
        flex-direction: column;
        min-height: 100vh;
    }

    /* Ensure navbar and footer span the full width */
    .navbar, .footer {
        width: 100%;
        background-color: #ffffff; /* Adjust as needed */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Optional: Add shadow for depth */
    }

    .main-content {
        width: 100%;
        max-width: 1200px;
        padding: 20px;
        margin: 20px auto; /* Center the main content */
        flex: 1; /* Allow main content to grow and fill remaining space */
    }

    .container {
        width: 100%;
        padding: 20px;
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    h2 {
        color: #333;
        margin-bottom: 20px;
        font-size: 24px;
    }

    h3 {
        color: #007bff;
        margin-bottom: 10px;
        font-size: 20px;
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
        transition: background-color 0.3s ease;
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

    .button-container a {
        background-color: #6b5ae8;
        color: white;
        padding: 12px 24px;
        text-decoration: none;
        border-radius: 25px;
        font-size: 16px;
        transition: background-color 0.3s ease;
        text-align: center;
    }

    .button-container a:hover {
        background-color: #5943c0;
    }

    /* Style for the "Add New Program" button */
    .add-program-button {
        background-color: #6b5ae8;
        color: white;
        padding: 12px 24px;
        text-decoration: none;
        border-radius: 25px;
        font-size: 16px;
        transition: background-color 0.3s ease;
        display: inline-block;
        margin-top: 20px;
    }

    .add-program-button:hover {
        background-color: #5943c0;
    }
    </style>

</head>
<body>

    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

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
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>




