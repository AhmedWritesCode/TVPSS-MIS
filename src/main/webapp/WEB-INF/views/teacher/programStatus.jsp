<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!--  Update Program -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
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
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto; /* Center the main content */
            flex: 1; /* Allow main content to grow and fill remaining space */
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
            color: #4CAF50; /* Green for success heading */
            font-size: 24px;
            margin-bottom: 20px;
        }

        .status-container p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        .status-container .success {
            color: #5cb85c; /* Green for success messages */
        }

        .status-container .failure {
            color: #d9534f; /* Red for failure messages */
        }

        .status-container .status-message {
            font-size: 20px;
            color: #333;
            background-color: #e7f7e7; /* Light green background for status message */
            border: 1px solid #4CAF50; /* Green border */
            border-radius: 5px;
            padding: 20px;
            font-weight: bold;
            margin: 20px 0;
        }

        .button-container {
            margin-top: 20px;
            display: flex;
            flex-direction: column;
            gap: 15px; /* Space between buttons */
        }

        .button-container a {
            display: inline-block;
            text-decoration: none;
            padding: 12px 24px;
            background-color: #6b5ae8; /* Purple button background */
            color: white;
            border-radius: 25px;
            font-size: 16px;
            transition: background-color 0.3s;
            text-align: center;
        }

        .button-container a:hover {
            background-color: #5943c0; /* Darker purple on hover */
        }
     </style>
</head>
<body>

    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

    <div class="main-content">
        <div class="status-container">
            <h1 class="${statusClass}">${message}</h1>
            <div class="status-message">
                <p>${statusMessage}</p>
            </div>
            <div class="button-container">
                <a href="${pageContext.request.contextPath}/teacher/viewProgram">View Programs</a>
                <a href="${pageContext.request.contextPath}/dashboard/teacherDashboard">Back to Dashboard</a>
            </div>
        </div>
    </div>

    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>


