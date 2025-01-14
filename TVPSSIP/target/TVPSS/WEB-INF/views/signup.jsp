<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
</head>
<body>
    <h1>Signup Form</h1>

    <!-- Display error message if exists -->
    <c:if test="${not empty errorMessage}">
        <div style="color: red;">${errorMessage}</div>
    </c:if>

    <!-- Signup Form -->
    <form action="${pageContext.request.contextPath}/signup" method="POST">
        <label>Email:</label>
        <input type="email" name="email" required/><br/><br/>

        <label>Password:</label>
        <input type="password" name="password" required/><br/><br/>

        <label>Role:</label>
        <select name="role" required>
            <option value="student">Student</option>
            <option value="teacher">Teacher</option>
            <option value="admin">Admin</option>
        </select><br/><br/>

        <button type="submit">Sign Up</button>
    </form>
    
    <br/>
    <a href="${pageContext.request.contextPath}/login">Already have an account? Login</a>
</body>
</html>

