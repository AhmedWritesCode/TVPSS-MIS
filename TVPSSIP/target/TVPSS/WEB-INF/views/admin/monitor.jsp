<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monitor User Activity</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }

        /* Sidebar */
        .sidebar {
            width: 240px;
            background-color: #000;
            color: #fff;
            position: fixed;
            height: 100%;
            padding-top: 20px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
            font-size: 18px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 15px 20px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .sidebar ul li:hover, .sidebar ul li.active {
            background-color: #333;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #fff;
            display: block;
        }

        /* Main content */
        .main-content {
            margin-left: 240px;
            padding: 20px;
            background-color: #fff;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .header h1 {
            font-size: 20px;
            margin: 0;
        }

        .header .user-info {
            display: flex;
            align-items: center;
        }

        .header .user-info img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            text-align: left;
            padding: 10px;
        }

        th {
            background-color: #f4f4f9;
        }

        /* Search and Filter */
        .search-bar {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        .search-bar input, .search-bar select, .search-bar button {
            padding: 8px;
            margin-right: 10px;
            font-size: 14px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .search-bar button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }

        .search-bar button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <ul>
            <li class="active"><a href="#">Dashboard</a></li>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Activity List</a></li>
            <li><a href="#">Progress Tracker</a></li>
            <li><a href="#">Resource Allocation</a></li>
            <li><a href="#">Monitor Activity</a></li>
            <li><a href="#">Approve Version Upgrade</a></li>
            <li><a href="#">Program Report</a></li>
            <li><a href="#">E-Certificate</a></li>
            <li><a href="#">Feedback Suggestions</a></li>
            <li><a href="#">Send Notifications</a></li>
        </ul>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Welcome, Mr. Ali</h1>
            <div class="user-info">
                <img src="profile-pic.jpg" alt="User Image">
                <div>
                    <p>Ali</p>
                    <p>Admin</p>
                </div>
            </div>
        </div>

        <div class="card">
            <h2>Monitor User Activity</h2>
            <div class="search-bar">
                <input type="text" placeholder="Search user...">
                <select>
                    <option value="">Category</option>
                    <option value="student">Student</option>
                    <option value="teacher">Teacher</option>
                </select>
                <button>Sort By</button>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Category</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>22</td>
                        <td>Daniel Hakim</td>
                        <td>Male</td>
                        <td>Student</td>
                        <td>12 Keidehan, Skudai</td>
                        <td>hakim@gmail.com</td>
                        <td>+601 XXXXXXXX</td>
                        <td>
                           <form action="${pageContext.request.contextPath}/admin/monitorUser" method="get">
    <input type="hidden" name="userId" value="22">
    <button type="submit">View</button>
</form>

                        </td>
                    </tr>
                    <!-- Additional rows can go here -->
                    <tr>
                        <td>23</td>
                        <td>Jane Doe</td>
                        <td>Female</td>
                        <td>Teacher</td>
                        <td>23 Jalan Maju, KL</td>
                        <td>jane.doe@gmail.com</td>
                        <td>+601 XXXXXXXX</td>
                        <td>
                            <form action="${pageContext.request.contextPath}/admin/monitorUser" method="get">
    <input type="hidden" name="userId" value="23">
    <button type="submit">View</button>
</form>

                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>