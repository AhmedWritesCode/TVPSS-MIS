<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit School</title>
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
<h1>Edit School</h1>
<form action="${pageContext.request.contextPath}/resources/edit/${resource.id}" method="post">
    <!-- School Name -->
    <label for="school">School Name:</label>
    <input type="text" id="school" name="school" value="${resource.school}" required>
    <br>

    <!-- Region Dropdown -->
    <label for="region">Region:</label>
    <select id="region" name="region" required>
        <option value="">-- Select Region --</option>
        <c:forEach var="region" items="${regions}">
            <option value="${region}" ${region == resource.region ? 'selected' : ''}>${region}</option>
        </c:forEach>
    </select>
    <br>

    <!-- Version Dropdown -->
    <label for="version">Version No.:</label>
    <select id="version" name="version" required>
        <option value="">-- Select Version --</option>
        <c:forEach begin="1" end="5" var="version">
            <option value="${version}" ${version == resource.id ? 'selected' : ''}>${version}</option>
        </c:forEach>
    </select>
    <br>

    <button type="submit">Update School</button>
</form>
<a href="${pageContext.request.contextPath}/resources">Back to List</a>
</div>

</body>
</html>