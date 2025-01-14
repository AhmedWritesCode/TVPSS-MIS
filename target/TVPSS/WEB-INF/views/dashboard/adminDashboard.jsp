<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #1a1a1a;
            color: white;
            position: fixed;
            padding: 20px;
        }

        .sidebar h2 {
            font-size: 20px;
            text-align: center;
            margin-bottom: 20px;
        }

        .menu-item {
            margin: 15px 0;
            padding: 10px;
            display: flex;
            align-items: center;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .menu-item:hover, .menu-item.active {
            background-color: #ffc107;
            color: black;
        }

        .content {
            margin-left: 270px;
            padding: 20px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            background-color: #343a40;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
        }

        .header h1 {
            font-size: 24px;
            margin: 0;
        }

        .card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .section-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .info-text {
            font-size: 14px;
            color: #555;
            margin-bottom: 15px;
        }

        .button-group {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
        }

        .button-group form {
            flex: 1 1 calc(33.333% - 10px);
        }

        button {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        button:hover {
            background-color: #0056b3;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        td {
            background-color: #f9f9f9;
        }

        .table-actions button {
            background-color: #28a745;
            border: none;
            padding: 8px 10px;
            color: white;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        .table-actions button:hover {
            background-color: #218838;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item active">Dashboard</a>
        <a href="#" class="menu-item">Profile</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Resource Allocation</a>
        <a href="#" class="menu-item">Approve Version Upgrade</a>
        <a href="#" class="menu-item">Program Reports</a>
        <a href="#" class="menu-item">Feedback & Suggestions</a>
    </div>

    <div class="content">
        <div class="header">
            <h1>Welcome, Admin!</h1>
            <span>Dashboard Overview</span>
        </div>

        <!-- Admin Action Buttons -->
        <div class="card">
            <h2 class="section-title">Admin Actions</h2>
            <div class="button-group">
                <form action="<%= request.getContextPath() %>/admin/trackProgress" method="get">
                    <button type="submit">Track School Progress</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/approveSchoolVersion" method="get">
                    <button type="submit">Approve Version Upgrade</button>
                </form>
                <form action="${pageContext.request.contextPath}/admin/monitor" method="get">
                    <button type="submit">Monitor User Activity</button>
                </form>
                
                <form action="${pageContext.request.contextPath}/resources" method="get">
                    <button type="submit">Allocate Resource and Equipment</button>
                </form>
            </div>
        </div>

        <!-- Admin Reporting Section -->
      <div class="card">
            <h2 class="section-title">Reporting</h2>
        
            <form action="<%= request.getContextPath() %>/admin/viewReport" method="get">
                <button type="submit">View Report</button>
            </form>
        </div>
        <!-- Reporting Action Buttons -->
        <div class="card">
            <h2 class="section-title">Reporting Actions</h2>
            <div class="button-group">
                <form action="<%= request.getContextPath() %>/admin/generateCertifications" method="get">
                    <button type="submit">Generate Certification</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/provideFeedback" method="get">
                    <button type="submit">Provide Feedback</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/sendNotification" method="get">
                    <button type="submit">Send Notifications</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
