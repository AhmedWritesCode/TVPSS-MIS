<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log In</title>
    <style>
    /* Global Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        flex-direction: column;
    }

    .container {
        background-color: #ffffff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 40px;
        width: 100%;
        max-width: 400px;
    }

    h1 {
        font-size: 28px;
        text-align: center;
        color: #333;
        margin-bottom: 20px;
    }

    .error-message {
        color: #d9534f; /* Red for error messages */
        text-align: center;
        margin-bottom: 15px;
        font-size: 16px;
    }

    label {
        font-size: 16px;
        color: #555;
        display: block;
        margin-bottom: 8px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 12px;
        margin: 8px 0;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 16px;
        box-sizing: border-box;
    }

    input[type="text"]:focus,
    input[type="password"]:focus {
        border-color: #6b5ae8; /* Purple border on focus */
        outline: none;
    }

    button {
        width: 100%;
        background-color: #6b5ae8; /* Purple button background */
        color: white;
        padding: 12px;
        border: none;
        border-radius: 25px; /* Rounded corners */
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #5943c0; /* Darker purple on hover */
    }

    .signup-link {
        display: block;
        text-align: center;
        margin-top: 20px;
        color: #6b5ae8; /* Purple link color */
        text-decoration: none;
        font-size: 16px;
        transition: color 0.3s ease;
    }

    .signup-link:hover {
        color: #5943c0; /* Darker purple on hover */
        text-decoration: underline;
    }
        </style>
</head>
<body>

    <div class="container">
        <h1>Login</h1>

        <!-- Display error message if exists -->
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <!-- Login Form -->
        <form action="${pageContext.request.contextPath}/login" method="post">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>

        <a href="${pageContext.request.contextPath}/signup" class="signup-link">Don't have an account? Sign up</a>
    </div>

</body>
</html>



