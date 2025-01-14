<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Resources</title>
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
<h1>Allocate Resource and Equipment</h1>

<h2>School List</h2>

<!-- Region Dropdown -->
<form method="get" action="${pageContext.request.contextPath}/resources">
    <label for="region">Area:</label>
    <select id="region" name="region" onchange="this.form.submit()">
        <option value="">-- Select Region --</option>
        <c:forEach var="region" items="${regions}">
            <option value="${region}" ${param.region == region ? 'selected' : ''}>${region}</option>
        </c:forEach>
    </select>
</form>

<!-- Add School Button -->
<a href="${pageContext.request.contextPath}/resources/addSchool">
    <button type="button">Add School</button>
</a>
<br>

<table border="1" style="width: 100%; text-align: left;">
    <thead>
        <tr>
            <th>School</th>
            <th>Region</th>
            <th>Version No.</th>
            <th>Allocation Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="resource" items="${resources}">
            <tr>
                <td>${resource.school}</td>
                <td>${resource.region}</td>
                <td>${resource.id}</td>
                <td>
    				<a href="${pageContext.request.contextPath}/resources/${resource.school}/create">Create Allocation</a>
    				<br>
    				<a href="${pageContext.request.contextPath}/resources/${resource.school}/view">View Allocation</a>
    				<br>
    				<a href="${pageContext.request.contextPath}/resources/edit/${resource.id}">Edit School</a>
    				<br>
    				<a href="${pageContext.request.contextPath}/resources/delete/${resource.id}" onclick="return confirm('Are you sure?')">Delete</a>
				</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>