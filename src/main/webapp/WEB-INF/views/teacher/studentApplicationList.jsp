<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Applications</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        .navbar, .footer {
            width: 100%;
            background-color: #ffffff; /* Adjust as needed */
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .main-content {
            width: 100%;
            max-width: 1200px;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            flex: 1;
        }

        h1 {
            font-size: 24px;
            color: #1f272b;
            margin-bottom: 20px;
            text-align: center;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #6b5ae8;
            color: white;
            font-weight: bold;
        }

        td {
            background-color: #f9f9f9;
        }

        tr:hover td {
            background-color: #f1f1f1;
        }

        .action-buttons {
            display: flex;
            gap: 10px;
        }

        .action-button {
            padding: 8px 16px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .approve-button {
            background-color: #4CAF50;
            color: white;
        }

        .approve-button:hover {
            background-color: #45a049;
        }

        .reject-button {
            background-color: #f44336;
            color: white;
        }

        .reject-button:hover {
            background-color: #d32f2f;
        }

        .pending-button {
            background-color: #ffc107;
            color: black;
        }

        .pending-button:hover {
            background-color: #e0a800;
        }

        .save-button {
            background-color: #ffc107; /* Yellow */
            color: black;
        }

        .save-button:hover {
            background-color: #e0a800; /* Darker yellow */
        }

        /* Style for the datetime input */
        input[type="datetime-local"] {
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        .back-button {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px 20px;
            background-color: #6b5ae8;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            text-decoration: none; /* Remove underline from link */
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #5943c0;
        }
    </style>
</head>
<body>

    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

    <div class="main-content">
        <h1>Student Applications</h1>

        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>Comment</th>
                    <th>Status</th>
                    <th>Interview Date and Time</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="application" items="${applications}">
                    <tr>
                        <td>${application.id}</td>
                        <td>${application.name}</td>
                        <td>${application.position}</td>
                        <td>${application.comment}</td>
                        <td>${application.status}</td>
<td>
    <form action="${pageContext.request.contextPath}/teacher/saveInterviewSchedule" method="post">
        <input type="hidden" name="applicationId" value="${application.id}" />
        <input type="datetime-local" name="interviewDateTime" value="${application.interviewDateTime}" />
        <button type="submit" class="action-button save-button">Save</button>
    </form>
</td>
                        <td>
                            <div class="action-buttons">
                                <form action="${pageContext.request.contextPath}/teacher/approveApplication" method="post">
                                    <input type="hidden" name="applicationId" value="${application.id}" />
                                    <button type="submit" class="action-button approve-button">Approve</button>
                                </form>

                                <form action="${pageContext.request.contextPath}/teacher/rejectApplication" method="post">
                                    <input type="hidden" name="applicationId" value="${application.id}" />
                                    <button type="submit" class="action-button reject-button">Reject</button>
                                </form>

                                <form action="${pageContext.request.contextPath}/teacher/pendingApplication" method="post">
                                    <input type="hidden" name="applicationId" value="${application.id}" />
                                    <button type="submit" class="action-button pending-button">Pending</button>
                                </form>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <a href="${pageContext.request.contextPath}/dashboard/teacherDashboard" class="back-button">Back to Teacher Dashboard</a>
    </div>

    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>