<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit Allocation for ${schoolName}</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            background: #fff;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            color: #333;
        }

        /* Updated for larger input box */
        input[type="text"] {
            width: 100%; /* Full width of the container */
            height: 40px; /* Increased height */
            padding: 10px; /* Padding for better readability */
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px; /* Increased font size */
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #ddd;
            color: #333;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-link:hover {
            background-color: #bbb;
        }
    </style>
</head>
<body>
<h1>Edit Allocation for ${schoolName}</h1>

<!-- Display error message if present -->
<c:if test="${not empty error}">
    <p style="color: red;">${error}</p>
</c:if>

<form action="${pageContext.request.contextPath}/resources/${schoolName}/edit" method="post">
    <label for="allocation">Allocation:</label>
    <input type="text" id="allocation" name="allocation" value="${allocation}" required>
    <button type="submit">Update Allocation</button>
</form>

<a href="${pageContext.request.contextPath}/resources" class="back-link">Back to Resources</a>
</body>
</html>