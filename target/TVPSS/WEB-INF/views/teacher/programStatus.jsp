<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f5f5f5;
        }

        .sidebar {
            width: 250px;
            background-color: #101010;
            height: 100vh;
            position: fixed;
            color: white;
            display: flex;
            flex-direction: column;
            padding: 10px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .menu-item {
            padding: 10px;
            margin: 5px 0;
            color: #ccc;
            text-decoration: none;
            display: flex;
            align-items: center;
        }

        .menu-item:hover, .menu-item.active {
            background-color: #1f1f1f;
            color: white;
        }

        .main-content {
            margin-left: 250px;
            padding: 20px;
        }

        .status-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            text-align: center;
            margin: 0 auto;
        }

        .status-container h1 {
            color: #4CAF50;
        }

        .status-container p {
            font-size: 18px;
            color: #555;
        }

        .status-container .success {
            color: #5cb85c;
        }

        .status-container .failure {
            color: #d9534f;
        }

        .status-container .status-message {
            font-size: 20px;
            color: #333;
            background-color: #e7f7e7;
            border: 1px solid #4CAF50;
            border-radius: 5px;
            padding: 20px;
            font-weight: bold;
            margin: 20px 0;
        }

        .button-container {
            margin-top: 20px;
        }

        .button-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            padding: 12px 24px;
            background-color: #6b5ae8;
            color: white;
            border-radius: 25px;
            font-size: 16px;
            transition: background-color 0.3s;
        }

        .button-container a:hover {
            background-color: #5943c0;
        }
    </style>
</head>
<body>

    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item">Dashboard</a>
        <a href="#" class="menu-item">Main Dashboard</a>
        <a href="#" class="menu-item">Add Program</a>
        <a href="#" class="menu-item">Update Program</a>
        <a href="#" class="menu-item">Crew List</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Application Review</a>
        <a href="#" class="menu-item">Version Upgrade</a>
        <a href="#" class="menu-item">Request Resource</a>
    </div>

    <div class="main-content">
        <div class="status-container">
            <h1 class="${statusClass}">${message}</h1>
            <div class="status-message">
                <p>${statusMessage}</p>
            </div>
            <div class="button-container">
                <a href="${pageContext.request.contextPath}/teacher/viewProgram">View Programs</a>
                <a href="${pageContext.request.contextPath}/dashboard/teacherDashboard">Back to Dashboard</a>
            </div>
        </div>
    </div>

</body>
</html>


