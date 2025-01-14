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
        .form-container input[type="date"],
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
        <h1>Request Resources</h1>
    <p><strong>School:</strong> ${school}</p>
    <p><strong>Version:</strong> ${version}</p>
    <p><strong>Address:</strong> ${address}</p>
	<br>
	<hr>
	<br>
	
    <!-- Final Request Form -->
    <form action="${pageContext.request.contextPath}/resources/requestResource" method="post">
        <label for="type">Resource Type:</label>
        <select id="type" name="type" required>
            <option value="">-- Select Type --</option>
            <option value="Laptop">Laptop</option>
            <option value="Projector">Projector</option>
            <option value="Whiteboard">Whiteboard</option>
        </select>

        <label for="description">Resource Description:</label>
        <textarea id="description" name="description" rows="4" required></textarea>

        <label for="dateRequired">Date Required:</label>
        <input type="date" id="dateRequired" name="dateRequired" required>

        <button type="submit">Submit Request</button>
    </form>
    </div>
</body>
</html>