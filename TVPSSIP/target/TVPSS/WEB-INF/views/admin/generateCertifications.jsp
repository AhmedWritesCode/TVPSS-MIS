<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generate Certifications</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 70%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 26px;
            color: #333;
            margin-bottom: 20px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #0056b3;
        }
        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        td {
            background-color: #f9f9f9;
        }
        .note {
            font-size: 14px;
            color: #777;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Generate Certifications</h1>
        <p>Click the button below to generate certifications for all eligible students and teachers who have completed the TVPSS Program.</p>

        <!-- Button to trigger the generation of certifications -->
        <form action="/generateCertifications" method="post">
            <button class="button" type="submit">Generate Now</button>
        </form>

        <!-- Displaying the certifications table after generation -->
        <c:if test="${not empty certifications}">
            <h2>Generated Certifications</h2>
            <table>
                <thead>
                    <tr>
                        <th>Certification ID</th>
                        <th>Name</th>
                        <th>Role</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Loop through the certifications list and display each one -->
                    <c:forEach var="certification" items="${certifications}">
                        <tr>
                            <td>${certification.id}</td>
                            <td>${certification.name}</td>
                            <td>${certification.role}</td>
                            <td>${certification.status}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty certifications}">
            <p class="note">No certifications available. Please click "Generate Now" to generate certifications.</p>
        </c:if>
    </div>
</body>
</html>

