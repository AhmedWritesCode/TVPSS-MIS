<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Add a new Program  -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Program Form</title>
   
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

    h1 {
        font-size: 24px;
        color: #1f272b;
        margin-bottom: 20px;
        text-align: center;
    }

    .program-form {
        background-color: #ffffff;
        border-radius: 10px;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
        color: #333;
    }

    .form-group input,
    .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
    }

    .form-group textarea {
        resize: vertical;
        min-height: 100px;
    }

    button[type="submit"] {
        background-color: #6b5ae8;
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: background-color 0.3s ease;
        width: 100%;
        max-width: 200px;
        margin: 0 auto;
        display: block;
    }

    button[type="submit"]:hover {
        background-color: #5943c0;
    }

    .message {
        padding: 15px;
        margin-bottom: 20px;
        border-radius: 5px;
        text-align: center;
        font-size: 16px;
    }

    .message.success {
        background-color: #d4edda;
        color: #155724;
        border: 1px solid #c3e6cb;
    }

    .message.error {
        background-color: #f8d7da;
        color: #721c24;
        border: 1px solid #f5c6cb;
    }
</style>
</head>
<body>

    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

    
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

    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>
