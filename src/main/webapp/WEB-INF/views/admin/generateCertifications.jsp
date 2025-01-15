<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List of TVPSS Paticipants</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh; /* Ensure the body takes up the full viewport height */
    }

    .navbar, .footer {
        width: 100%;
        background-color: #ffffff; /* Adjust as needed */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Optional: Add shadow for depth */
    }

    .container {
        width: 90%;
        max-width: 1200px;
        margin: 20px auto;
        padding: 30px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        flex: 1; /* Allow the container to grow and fill the remaining space */
    }

    h1 {
        font-size: 28px;
        color: #333;
        margin-bottom: 20px;
    }

    h2 {
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
    }

    .button {
        display: inline-block;
        padding: 12px 24px;
        font-size: 16px;
        color: #fff;
        background-color: #6b5ae8; /* Purple button background */
        border: none;
        border-radius: 25px; /* Rounded corners */
        cursor: pointer;
        margin-top: 20px;
        transition: background-color 0.3s ease;
    }

    .button:hover {
        background-color: #5943c0; /* Darker purple on hover */
    }

    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 15px;
        border: 1px solid #ddd;
        text-align: left;
    }

    th {
        background-color: #6b5ae8; /* Purple header background */
        color: white;
        font-weight: bold;
    }

    td {
        background-color: #f9f9f9;
    }

    tr:nth-child(even) td {
        background-color: #f1f1f1; /* Alternate row color */
    }

    tr:hover td {
        background-color: #e9e9e9; /* Hover effect for rows */
    }

    .note {
        font-size: 14px;
        color: #777;
        margin-top: 20px;
    }
    
    </style>
        </head>
<body>
        <jsp:include page="/WEB-INF/views/admin/navbar.jsp" />

    <div class="container">
        <h1>List of TVPSS Paticipants</h1>
        <!-- Displaying the users table -->
        <c:if test="${not empty users}">
            <h2>All Active Teachers & Students </h2>
            <table>
                <thead>
                    <tr>
                        <th>Username</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Role</th>
                        
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.username}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.email}</td>
                            <td>${user.role}</td>
                   
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:if>

        <c:if test="${empty users}">
            <p class="note">No eligible users found. Please click "Generate Now" to generate certifications.</p>
        </c:if>
    </div>
    
        <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>


