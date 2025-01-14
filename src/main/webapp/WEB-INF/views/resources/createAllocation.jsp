<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Create Allocation</title>
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
        .form-container input[type="email"],
        .form-container input[type="tel"],
        .form-container input[type="file"],
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
        
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
            height: 150px;
        }
        
        .form-container input[type="text"],
        .form-container textarea,
        .form-container select,
        .form-container button {
            width: 100%;
            margin-top: 10px;
            margin-bottom: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
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
<h1>Create Allocation for ${school}</h1>
<form action="${pageContext.request.contextPath}/resources/${school}/create" method="post">

    <!-- Resource Name -->
   
    <br>

    <!-- Resource Type Dropdown -->
    <label for="type">Resource Type:</label>
    <select id="type" name="type" required>
        <option value="">-- Select Type --</option>
        <c:forEach var="type" items="${types}">
            <option value="${type}">${type}</option>
        </c:forEach>
    </select>
    <br>

    <!-- Resource Description -->
    <label for="description">Description:</label>
    <textarea id="description" name="description"></textarea>
    <br>

    <button type="submit">Add Allocation</button>
	<a href="${pageContext.request.contextPath}/resources">Back to List</a>
	
</form>
</div>

</body>
</html>