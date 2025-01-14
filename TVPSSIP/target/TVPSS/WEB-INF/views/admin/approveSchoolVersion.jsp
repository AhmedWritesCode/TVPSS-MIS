<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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

        .filter-section {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .filter-section input, .filter-section select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .filter-section button {
            padding: 8px 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .filter-section button:hover {
            background-color: #0056b3;
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
            <div class="filter-section">
                <input type="text" placeholder="Search by school name">
                <select>
                    <option value="">Filter by Status</option>
                    <option value="approved">Approved</option>
                    <option value="disabled">Disabled</option>
                    <option value="pending">Pending</option>
                </select>
                <button>Apply Filter</button>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>School Name</th>
                        <th>Status</th>
                        <th>Date</th>
                        <th>Progress</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>SMK Taman Mutiara Rini</td>
                        <td class="status-approved">Approved</td>
                        <td>24.Jan.2024</td>
                        <td>
                            <div class="progress-bar">
                                <div style="width: 100%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>SJK (C) Ai Chun, Segamat</td>
                        <td class="status-disabled">Disabled</td>
                        <td>01.Mar.2024</td>
                        <td>
                            <div class="progress-bar">
                                <div style="width: 25%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>SK Taman Universiti (2), Skudai</td>
                        <td class="status-pending">Pending</td>
                        <td>20.May.2024</td>
                        <td>
                            <div class="progress-bar">
                                <div style="width: 50%;"></div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>SMK (FELDA) Ulu Tebrau</td>
                        <td class="status-approved">Approved</td>
                        <td>12.June.2024</td>
                        <td>
                            <div class="progress-bar">
                                <div style="width: 100%;"></div>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

