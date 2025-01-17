<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Request Resources</title>
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
        .form-container select,
        .form-container textarea,
        .form-container button {
            width: 100%;
            margin-top: 10px;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
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
        .form-container .message {
            margin-top: 20px;
            font-weight: bold;
            color: green;
        }
        .form-container .error {
            margin-top: 20px;
            font-weight: bold;
            color: red;
        }
        
        
    </style>
</head>
<body>
    <div class="form-container">
        <h1>Request Resources</h1>
        
        <!-- Show any error message -->
        <c:if test="${not empty error}">
            <div class="error">${error}</div>
        </c:if>

        <!-- Show success message and the submitted details -->
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
            <p><strong>School:</strong> ${school}</p>
            <p><strong>Version:</strong> ${version}</p>
            <p><strong>Resource Type:</strong> ${type}</p>
            <p><strong>Resource Description:</strong> ${description}</p>
        </c:if>
        
        <br>
        <hr>
        <br>

        <!-- Resource Request Form -->
        <form action="${pageContext.request.contextPath}/resources/requestResource" method="post">
            <!-- Pass school and version directly from the query parameters -->
            <label for="school">School:</label>
            <input type="text" id="school" name="school" value="${param.school}" readonly />
            <br>
            <br>

            <label for="version">Version:</label>
            <input type="text" id="version" name="version" value="${param.version}" readonly />
            <br>
            <br>

            <label for="type">Resource Type:</label>
            <select id="type" name="type" required>
                <option value="">-- Select Type --</option>
                <option value="Laptop">Laptop</option>
                <option value="Projector">Projector</option>
                <option value="Whiteboard">Whiteboard</option>
            </select>

            <label for="description">Resource Description:</label>
            <textarea id="description" name="description" rows="4" required></textarea>

            <button type="submit">Submit Request</button>
        </form>
                <a href="${pageContext.request.contextPath}/dashboard/teacherDashboard" class="btn-back">Back to Dashboard</a>
        
    </div>
</body>
</html>