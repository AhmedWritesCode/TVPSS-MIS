<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Report Details</title>
    <style>
    /* General Body Styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #fff; /* White background */
        margin: 0;
        padding: 0;
        color: #333; /* Dark text color */
    }

    /* Container Styling (scoped to this page only) */
    .container {
        width: 90%; /* Slightly wider for better use of space */
        max-width: 1200px; /* Limit maximum width */
        margin: 20px auto; /* Reduced top margin */
        padding: 20px; /* Reduced padding */
        background-color: #fff; /* White background */
        border-radius: 8px; /* Slightly rounded corners */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    }

    /* Headings (scoped to this page only) */
    .container h1, .container h2 {
        font-size: 24px; /* Slightly smaller font size */
        color: #333; /* Dark text color */
        margin-bottom: 15px; /* Reduced margin */
    }

    .container h2 {
        font-size: 22px; /* Slightly smaller font size */
        margin-top: 30px; /* Reduced margin */
        text-align: center;
    }

    /* List Styling (scoped to this page only) */
    .container ul {
        list-style-type: none;
        padding-left: 0;
    }

    .container li {
        background-color: #f8f9fa; /* Light gray background */
        padding: 12px; /* Reduced padding */
        margin-bottom: 10px;
        border-radius: 5px; /* Slightly rounded corners */
        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1); /* Subtle shadow */
    }

    .container li strong {
        color: #007bff; /* Blue text for strong elements */
    }

    /* Table Styling (scoped to this page only) */
    .container table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    .container th, .container td {
        padding: 12px; /* Reduced padding */
        border: 1px solid #ddd; /* Light border */
        text-align: left;
    }

    .container th {
        background-color: #007bff; /* Blue header background */
        color: white; /* White text */
        font-size: 14px; /* Slightly smaller font size */
    }

    .container td {
        background-color: #fff; /* White background for table cells */
    }

    .container tr:hover td {
        background-color: #f1f1f1; /* Light gray hover effect */
    }

    /* Button Styling (scoped to this page only) */
    .container button {
        background-color: #007bff; /* Blue button background */
        color: white; /* White text */
        padding: 10px 20px; /* Reduced padding */
        border: none;
        border-radius: 5px; /* Slightly rounded corners */
        cursor: pointer;
        font-size: 14px; /* Slightly smaller font size */
        display: block;
        width: 150px; /* Reduced width */
        margin: 20px auto; /* Centered with reduced margin */
        transition: background-color 0.3s ease;
    }

    .container button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }
            </style>
</head>
<body>
    <jsp:include page="/WEB-INF/views/admin/navbar.jsp" />

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
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>


