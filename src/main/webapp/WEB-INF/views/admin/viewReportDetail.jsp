<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1, h2 {
            font-size: 28px;
            color: #333;
            margin-bottom: 20px;
        }
        h2 {
            font-size: 24px;
            margin-top: 40px;
            text-align: center;
        }
        ul {
            list-style-type: none;
            padding-left: 0;
        }
        li {
            background-color: #f9f9f9;
            padding: 15px;
            margin-bottom: 10px;
            border-radius: 5px;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
        }
        li strong {
            color: #007bff;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
            font-size: 16px;
        }
        td {
            background-color: #f9f9f9;
        }
        tr:hover td {
            background-color: #f1f1f1;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            display: block;
            width: 200px;
            margin: 20px auto;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Programs List</h1>
        <ul>
            <!-- Iterate through programs and display their details -->
            <c:forEach var="program" items="${programs}">
                <li>
                    <strong>Program Name:</strong> ${program.name} <br>
                    <strong>Description:</strong> ${program.description}
                </li>
            </c:forEach>
        </ul>
    </div>

    <div class="container">
        <h2>Schools List</h2>
        <table>
            <thead>
                <tr>
                    <th>School Name</th>
                    <th>District</th>
                    <th>Progress</th>
                    
                </tr>
            </thead>
            <tbody>
                <!-- Iterate through schools and display their details -->
                <c:forEach var="school" items="${schools}">
                    <tr>
                        <td>${school.schoolName}</td>
                        <td>${school.district}</td>
                        <td>${school.progress}</td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="container">
        <button onclick="window.history.back()">Go Back</button>
    </div>

</body>
</html>


