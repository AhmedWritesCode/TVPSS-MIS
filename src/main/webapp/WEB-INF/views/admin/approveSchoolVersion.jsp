<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Approve School Version Upgrade</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .sidebar {
            width: 250px;
            background-color: #1a1a1a;
            color: white;
            height: 100vh;
            padding: 20px;
        }

        .sidebar h2 {
            font-size: 18px;
            margin-bottom: 20px;
            text-align: center;
        }

        .menu-item {
            color: white;
            padding: 10px;
            margin: 10px 0;
            text-decoration: none;
            display: block;
            border-radius: 5px;
        }

        .menu-item:hover, .menu-item.active {
            background-color: #ffc107;
            color: black;
        }

        .content {
            flex: 1;
            padding: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 24px;
        }

        .header .user-info {
            text-align: right;
        }

        .table-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f8f9fa;
        }

        .status-approved {
            color: green;
        }

        .status-disabled {
            color: red;
        }

        .status-pending {
            color: orange;
        }

        .progress-bar {
            background-color: #f1f1f1;
            border-radius: 5px;
            overflow: hidden;
            height: 10px;
        }

        .progress-bar div {
            height: 100%;
            background-color: #007bff;
        }
        .action-approved { color: green; }
        .action-rejected { color: red; }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item">Dashboard</a>
        <a href="#" class="menu-item">Profile</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Progress Tracker</a>
        <a href="#" class="menu-item">Resource Allocation</a>
        <a href="#" class="menu-item active">Approve School Version Upgrade</a>
        <a href="#" class="menu-item">Program Report</a>
        <a href="#" class="menu-item">E-Certificate</a>
        <a href="#" class="menu-item">Feedback & Suggestions</a>
        <a href="#" class="menu-item">Send Email & Notifications</a>
    </div>
    <div class="content">
        <div class="header">
            <h1>Approve School Version Upgrade</h1>
            <div class="user-info">
                <p>Welcome, Mr Ali</p>
                <p>Admin</p>
            </div>
        </div>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>School Name</th>
                        <th> Version </th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Progress</th>
                    </tr>
                </thead>
                <tbody>
                    <c:if test="${empty schools}">
                        <tr><td colspan="5">No schools found.</td></tr>
                    </c:if>
                    <c:forEach var="school" items="${schools}">
                        <tr>
                            <td>${school.schoolName}</td>
                            <td>${school.version}</td>
                            <td> ${school.action }                            </td>
                            <td><fmt:formatDate value="${school.date}" pattern="yyyy-MM-dd" /></td>
                            <td>
                                <div class="progress-bar">
                                    <div style="width: ${school.progress != null ? school.progress : 0}%;">${school.progress != null ? school.progress : 0}%</div>
                                </div>
                            </td>
                            <td>
                                <form method="post" action="${pageContext.request.contextPath}/admin/approveVersionUpgrade" id="form-${school.schoolName}">
                                    <input type="hidden" name="schoolName" value="${school.schoolName}" />
                                    <input type="hidden" name="action" id="action-${school.schoolName}" value="${school.action}" />
                                    <button type="button" onclick="updateStatus('${school.schoolName}', 'approved')" style="background-color: green; color: white; padding: 5px 10px; border: none; border-radius: 3px; cursor: pointer;">Approve</button>
                                    <button type="button" onclick="updateStatus('${school.schoolName}', 'rejected')" style="background-color: red; color: white; padding: 5px 10px; border: none; border-radius: 3px; cursor: pointer;">Reject</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>

    <script>
        function updateStatus(schoolName, action) {
            // Update the hidden action field in the form
            document.getElementById('action-' + schoolName).value = action;
            
            // Submit the form for that school
            document.getElementById('form-' + schoolName).submit();
        }
    </script>

</body>
</html>