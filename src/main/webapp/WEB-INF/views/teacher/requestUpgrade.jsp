<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Upgrade</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .container h3 {
            text-align: center;
            color: #333333;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            color: #555555;
            margin-bottom: 5px;
        }
        .form-group input[type="text"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #cccccc;
            border-radius: 5px;
            font-size: 14px;
            background: #f5f5f5;
        }
        .form-group input[type="text"]:read-only {
            background: #e9ecef;
        }
        .form-group button {
            width: 100%;
            padding: 10px;
            background: #28a745;
            border: none;
            color: #ffffff;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .form-group button:hover {
            background: #218838;
        }
    </style>
</head>
<body>
   <div class="container">
    <h3>Request TVPSS Upgrade</h3>
    <form action="${pageContext.request.contextPath}/teacher/submitUpgradeRequest" method="post">
        <!-- School Name -->
        <div class="form-group">
            <label for="schoolName">School Name:</label>
            <input type="text" id="schoolName" name="schoolName" placeholder="Enter school name" required>
        </div>
        <!-- Desired Version -->
        <div class="form-group">
            <label for="version">Upgrade To Version:</label>
            <input type="text" id="version" name="version" placeholder="Enter desired version" required>
        </div>
        <!-- Submit Button -->
        <div class="form-group">
            <button type="submit">Submit Request</button>
        </div>
    </form>
</div>

</body>
</html>
