<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List (Resources)</title>
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

<!-- Removed Add School Button -->

<table border="1" style="width: 100%; text-align: left;">
    <thead>
        <tr>
            <th>School</th>
            
            <th>Version No.</th>
            <th>Allocation Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="school" items="${schools}">
                        <tr>
                            <td>${school.schoolName}</td>
                            <td>${school.version}</td>
                            <td>
    				<a href="${pageContext.request.contextPath}/resources/${school.schoolName}/create">Create Allocation</a>

    				<br>
    				<a href="${pageContext.request.contextPath}/resources/${school.schoolName}/view">View Allocation</a>

    				<br>
    				<a href="${pageContext.request.contextPath}/resources/${school.schoolName}/edit">Edit Allocation</a>

    				<br>
    	

				</td>
            </tr>
        </c:forEach>
    </tbody>
</table>
</body>
</html>