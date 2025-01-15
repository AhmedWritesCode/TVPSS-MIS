<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Track Progress for School</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            display: flex;
        }

        .sidebar {
            width: 250px;
            background-color: #1a1a1a;
            color: #fff;
            padding: 20px;
            height: 100vh;
        }

        .sidebar h2 {
            font-size: 18px;
            text-align: center;
            margin-bottom: 20px;
        }

        .menu-item {
            margin: 10px 0;
            padding: 10px;
            color: #fff;
            text-decoration: none;
            display: flex;
            align-items: center;
            border-radius: 5px;
        }

        .menu-item:hover {
            background-color: #333333;
        }

        .menu-item.active {
            background-color: #ffc107;
            color: #000;
        }

        .menu-item span {
            margin-left: 10px;
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
            background-color: #343a40;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
        }

        .header h1 {
            margin: 0;
            font-size: 20px;
        }

        .table-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f8f9fa;
        }

        .track-btn {
            background-color: #6c63ff;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .track-btn:hover {
            background-color: #5148d6;
        }

        .pagination {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .pagination button {
            background-color: #6c757d;
            color: #fff;
            border: none;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }

        .pagination button:hover {
            background-color: #495057;
        }

        .pagination span {
            font-size: 14px;
        }
    </style>
</head>
<body>
    
        
     <div class="content">
        <div class="header">
            <h1>Track School Progress</h1>
        </div>
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>School</th>
                        <th>District</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="school" items="${schools}">
                        <tr>
                            <td>${school.schoolName}</td>
                            <td>${school.district}</td>
                            <td>
                                <form action="trackProgressDetail" method="get">
                                    <button class="track-btn">Track</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>

