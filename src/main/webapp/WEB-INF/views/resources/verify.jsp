<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Verify School Information</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: #ffffff;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            width: 100%;
        }
        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #444;
        }
        .form-container label {
            font-size: 14px;
            color: #555;
        }
        .form-container input[type="text"],
        .form-container textarea,
        .form-container input[type="password"],
        .form-container button {
            width: 100%;
            margin-top: 10px;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        
        .form-container input[type="file"] {
            padding: 3px;
        }
        .form-container button {
            background-color: #5cb85c;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }
        .form-container button:hover {
            background-color: #4cae4c;
        }
        .form-container a {
            display: block;
            text-align: center;
            color: #5cb85c;
            text-decoration: none;
            margin-top: -10px;
            font-size: 14px;
        }
        .form-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Verify School Information</h1>

        <!-- Display error message if any -->
        <c:if test="${not empty error}">
            <p class="error">${error}</p>
        </c:if>

        <form action="${pageContext.request.contextPath}/resources/verify" method="post">
    <label for="school">School Name:</label>
    <input type="text" id="school" name="school" required>
    
    <label for="version">Version:</label>
    <input type="text" id="version" name="version" required>
    
    <button type="submit">Verify</button>
</form>

<c:if test="${not empty error}">
    <div class="error-message">${error}</div>
</c:if>
    </div>
</body>
</html>