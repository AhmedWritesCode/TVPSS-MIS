<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Status</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
        }
        .sidebar {
            width: 250px;
            background-color: #000;
            color: #fff;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .sidebar .logo {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            padding: 20px 0;
        }
        .sidebar .menu a {
            padding: 15px 20px;
            color: #fff;
            text-decoration: none;
            display: flex;
            align-items: center;
        }
        .sidebar .menu a:hover, .sidebar .menu a.active {
            background-color: #ffcc00;
            color: #000;
        }
        .main {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }
        .header {
            background-color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .header div:last-child {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .header div:last-child span {
            font-size: 20px;
        }
        .container {
            flex-grow: 1;
            margin: 50px;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 26px;
            color: #333;
        }
        .message {
            font-size: 18px;
            color: #333;
        }
        .error {
            color: red;
        }
        .success {
            color: green;
        }
        .button {
            background-color: #6c63ff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            font-size: 16px;
        }
        .button:hover {
            background-color: #5753d5;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">TBC TVPSS</div>
        <div class="menu">
            <a href="#">Dashboard</a>
            <a href="#">Profile</a>
            <a href="#">Activity List</a>
            <a href="#">Crew Application</a>
            <a href="#" class="active">Video Studio</a>
        </div>
    </div>
    <div class="main">
        <div class="header">
            <div>Welcome</div>
            <div>
                <span>📧</span>
                <span>🔔</span>
                <span></span>
            </div>
        </div>
        <div class="container">
            <h1>Upload Status</h1>

            <!-- Check for error or success messages -->
            <div class="message">
                <c:if test="${not empty error}">
                    <p class="error">${error}</p>
                </c:if>
                <c:if test="${not empty message}">
                    <p class="success">${message}</p>
                    <p>Uploaded Video Link: <a href="${videoLink}" target="_blank">${videoLink}</a></p>
                </c:if>
            </div>
          <form action="${pageContext.request.contextPath}/dashboard/studentDashboard" method="GET">
    <button class="button" type="submit">Go Back to Dashboard</button>
</form>


        </div>
    </div>
</body>
</html>

  