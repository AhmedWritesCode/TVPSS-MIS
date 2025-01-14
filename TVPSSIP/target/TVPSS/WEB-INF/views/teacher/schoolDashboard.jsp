<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVPSS Dashboard</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f7f8fc;
        }
        .sidebar {
            width: 250px;
            background-color: #171717;
            color: #fff;
            height: 100vh;
            position: fixed;
            display: flex;
            flex-direction: column;
        }
        .sidebar .logo {
            font-size: 24px;
            font-weight: bold;
            padding: 20px;
            text-align: center;
        }
        .sidebar .menu {
            flex-grow: 1;
        }
        .sidebar .menu a {
            display: block;
            padding: 15px 20px;
            color: #fff;
            text-decoration: none;
            font-size: 16px;
        }
        .sidebar .menu a:hover, .sidebar .menu .active {
            background-color: #ffcc00;
            color: #000;
        }
        .main-content {
            margin-left: 250px;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            margin-bottom: 20px;
        }
        .grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }
        .btn {
            background-color: #ffcc00;
            color: #000;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }
        .btn:hover {
            background-color: #e6b800;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">TBC TVPSS</div>
        <div class="menu">
            <a href="#" class="active">Dashboard</a>
            <a href="#">Add Program</a>
            <a href="#">Update Program</a>
            <a href="#">Crew List</a>
            <a href="#">Activity List</a>
            <a href="#">Application Review</a>
            <a href="#">Version Upgrade</a>
            <a href="#">Request Resource</a>
        </div>
    </div>

    <div class="main-content">
        <div class="header">
            <h2>Welcome, Mr Kamal</h2>
            <div>
                <span>📧</span>
                <span>🔔</span>
                <span>👤</span>
            </div>
        </div>

        <div class="grid">
            <div class="card">
                <h3>Application Review</h3>
                <ul>
                    <li>John Doe <span>Yesterday</span></li>
                    <li>Mark Johnson <span>3 days ago</span></li>
                    <li>Wade Warren <span>5 days ago</span></li>
                </ul>
                <button class="btn">View All</button>
            </div>
            <div class="card">
                <h3>June 2024</h3>
                <p>Upcoming Event: Sport Day Shooting</p>
                <button class="btn">View</button>
            </div>
            <div class="card">
                <h3>Version Request</h3>
                <p>Title: Upgrade to Version 4</p>
                <p>Status: Pending</p>
                <p>Requested At: 10 June 2024</p>
            </div>
            <div class="card">
                <h3>Resource Request</h3>
                <p>No Request Currently.</p>
            </div>
            <div class="card">
                <h3>Activities</h3>
                <ul>
                    <li>MSSD Badminton Competition <span>20/06/2024 - 22/06/2024</span>
                        <button class="btn">Update</button>
                    </li>
                </ul>
            </div>
            <div class="card">
                <h3>To Be Continued...</h3>
            </div>
        </div>
    </div>
</body>
</html>

