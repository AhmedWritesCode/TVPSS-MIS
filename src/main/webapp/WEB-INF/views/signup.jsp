<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f7fc;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh; /* Changed from height to min-height */
        margin: 0;
        padding: 20px; /* Added padding to create some empty space */
    }

    .container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
        margin: 20px; /* Added margin for spacing */
    }

    h1 {
        text-align: center;
        color: #333;
        font-size: 24px;
        margin-bottom: 20px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    label {
        font-size: 14px;
        color: #555;
        display: block;
        margin-bottom: 8px;
    }

    input, select {
        width: 100%;
        padding: 12px;
        border-radius: 8px;
        border: 1px solid #ddd;
        font-size: 16px;
        box-sizing: border-box;
    }

    input:focus, select:focus {
        outline: none;
        border-color: #6b5ae8; /* Purple border on focus */
    }

    .error-message {
        color: #d9534f; /* Red for error messages */
        font-size: 14px;
        margin-bottom: 15px;
        text-align: center;
    }

    button {
        width: 100%;
        padding: 12px;
        background-color: #6b5ae8; /* Purple button background */
        border: none;
        color: white;
        font-size: 16px;
        border-radius: 25px; /* Rounded corners */
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #5943c0; /* Darker purple on hover */
    }

    a {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
        color: #6b5ae8; /* Purple link color */
        text-decoration: none;
        transition: color 0.3s ease;
    }

    a:hover {
        color: #5943c0; /* Darker purple on hover */
        text-decoration: underline;
    }

    /* School Name Field Styling */
    #schoolNameField {
        display: none; /* Hidden by default */
    }

    #schoolNameField label {
        font-size: 14px;
        color: #555;
        margin-bottom: 8px;
    }

    #schoolNameField select {
        width: 100%;
        padding: 12px;
        border-radius: 8px;
        border: 1px solid #ddd;
        font-size: 16px;
        box-sizing: border-box;
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


