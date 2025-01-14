<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            font-size: 14px;
            color: #555;
            display: block;
            margin-bottom: 5px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            font-size: 14px;
        }

        input:focus, select:focus {
            outline: none;
            border-color: #5b9bd5;
        }

        .error-message {
            color: red;
            font-size: 12px;
            margin-bottom: 15px;
            text-align: center;
        }

        button {
            width: 100%;
            padding: 10px;
            background-color: #5b9bd5;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #4a8bb9;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
            color: #555;
            text-decoration: none;
        }

        a:hover {
            color: #5b9bd5;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Signup Form</h1>

        <!-- Display error message if exists -->
        <c:if test="${not empty errorMessage}">
            <div class="error-message">${errorMessage}</div>
        </c:if>

        <!-- Signup Form -->
        
        
        <form action="${pageContext.request.contextPath}/signup" method="POST">
                
                <div class="form-group">
                <label for="firstName">First Name:</label>
                <input type="text" id="firstName" name="firstName" required>
                </div>
                
                <div class="form-group">
                <label for="lastName">Last Name:</label>
                <input type="text" id="lastName" name="lastName" required>
                </div>                
             <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
    </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" required/>
            </div>

            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" required/>
            </div>

            <div class="form-group">
                <label for="role">Role:</label>
                <select name="role" id="role" required>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                    <option value="admin">Admin</option>
                </select>
            </div>

         <!-- School Name Field (Only for student and teacher roles) -->
<div class="form-group" id="schoolNameField" style="display: none;">
    <label for="schoolName">School Name:</label>
    <select name="schoolName">
        <option value="">Select School</option>
        <c:forEach var="school" items="${schools}">
            <option value="${school.schoolId}">${school.schoolName}</option>
        </c:forEach>
    </select>

</div>


            <button type="submit">Sign Up</button>
        </form>
        
        <a href="${pageContext.request.contextPath}/login">Already have an account? Login</a>
    </div>

    <script>
        // Show or hide the schoolName field based on the role
        const roleSelect = document.getElementById("role");
        const schoolNameField = document.getElementById("schoolNameField");

        roleSelect.addEventListener("change", function() {
            if (roleSelect.value === "student" || roleSelect.value === "teacher") {
                schoolNameField.style.display = "block";
            } else {
                schoolNameField.style.display = "none";
            }
        });

        // Trigger the event on page load to handle the default role
        roleSelect.dispatchEvent(new Event("change"));
    </script>
</body>
</html>


