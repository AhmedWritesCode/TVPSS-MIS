<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Allocated Resources for ${schoolName}</title>
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

        .allocation-box {
            background-color: #ffffff;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 20px;
            margin: 20px auto;
            max-width: 600px;
            box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
        }

        .allocation-box h2 {
            margin: 0 0 10px;
            color: #007bff;
        }

        .allocation-box p {
            margin: 5px 0;
            color: #555;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: #007bff;
        }

        a:hover {
            text-decoration: underline;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .back-link:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h1>Allocated Resources for ${schoolName}</h1>

<div class="allocation-box">
    <h2>Allocation Details</h2>
    <c:choose>
        
        <c:when test="${empty allocation}">
            <p>No resources have been allocated to ${schoolName} yet.</p>
        </c:when>

       
        <c:otherwise>
            <p>${allocation}</p>
        </c:otherwise>
    </c:choose>
</div>

<a href="${pageContext.request.contextPath}/resources" class="back-link">Back to School List</a>
</body>
</html>