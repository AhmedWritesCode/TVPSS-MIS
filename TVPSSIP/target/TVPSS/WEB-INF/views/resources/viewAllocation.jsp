<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>View Allocation</title>
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
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border: 1px solid #ddd;
        }

        th {
            background-color: #f4f4f9;
        }

        .track-btn {
            background-color: #007bff;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .track-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Allocations for ${school}</h1>

<!-- Allocations Table -->
<table border="1" style="width: 100%; text-align: left;">
    <thead>
        <tr>
            <th>Name</th>
            <th>Type</th>
            <th>Description</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="resource" items="${resources}">
            <tr>
                <td>${resource.name}</td>
                <td>${resource.type}</td>
                <td>${resource.description}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/resources/${school}/edit/${resource.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/resources/${school}/delete/${resource.id}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>

<a href="${pageContext.request.contextPath}/resources">Back to School List</a>
</body>
</html>