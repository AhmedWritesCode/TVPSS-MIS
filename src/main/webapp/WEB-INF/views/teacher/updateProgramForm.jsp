<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- update program -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Program Form</title>
    
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

    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        background-color: #ffffff;
        padding: 10px 20px;
        border-bottom: 1px solid #ddd;
        margin-bottom: 20px;
    }

    .header h1 {
        font-size: 24px;
        color: #333;
        margin: 0;
    }

    .header div {
        display: flex;
        align-items: center;
        gap: 10px;
    }

    .header span {
        font-size: 16px;
        color: #555;
    }

    .header img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
    }

    .content-wrapper {
        display: flex;
        gap: 20px;
        align-items: flex-start;
    }

    .program-card {
        background-color: #6b5ae8;
        color: white;
        border-radius: 10px;
        padding: 20px;
        min-width: 300px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .program-card h2 {
        font-size: 20px;
        margin-bottom: 10px;
    }

    .program-card p {
        font-size: 16px;
        line-height: 1.5;
    }

    .program-form {
        background-color: white;
        border-radius: 10px;
        padding: 20px;
        flex-grow: 1;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
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
        padding: 12px 24px;
        border-radius: 25px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
        max-width: 200px;
        margin: 0 auto;
        display: block;
    }

    button[type="submit"]:hover {
        background-color: #5943c0;
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
        padding: 12px 24px;
        border: none;
        cursor: pointer;
        text-align: center;
        font-size: 16px;
        width: 48%;
        transition: background-color 0.3s ease;
    }

    .button-container button:hover {
        background-color: #5943c0;
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

    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />


    <div class="main-content">

        <div class="content-wrapper">
            <div class="program-card">
                <h2>Program Update Submission</h2>
                <p>This forum is designated for submitting updates to the program details,</p>
                <p> specifically the program name and description. </p>
                 <p> By submitting here, you confirm your intent to modify these details.</p>
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
    
        <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>



