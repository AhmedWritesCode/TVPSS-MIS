<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- list of programs -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>School Dashboard</title>
<style>
    /* General styles */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        background-color: #f4f6f9;
        color: #333;
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
        padding: 40px;
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 20px auto; /* Center the main content */
        flex: 1; /* Allow main content to grow and fill remaining space */
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
    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

    <!-- Main Content -->
    <div class="main-content">
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
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>
