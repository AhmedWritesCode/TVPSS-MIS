<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teacher Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .sidebar {
            background-color: #000000;
            color: white;
            width: 250px;
            height: 100vh;
            position: fixed;
            padding: 20px 10px;
        }

        .sidebar h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .menu-item {
            margin: 10px 0;
            padding: 10px 15px;
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            border-radius: 5px;
            cursor: pointer;
        }

        .menu-item:hover,
        .menu-item.active {
            background-color: #ffc107;
            color: black;
        }

        .main-content {
            margin-left: 270px;
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
            margin: 0;
        }

        .header .user-info {
            display: flex;
            align-items: center;
        }

        .header .user-info img {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
        }

        .info-card {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .info-card h3 {
            margin: 0 0 10px 0;
        }

        .button-group {
            display: flex;
            flex-wrap: wrap;
            gap: 15px;
            margin-bottom: 20px;
        }

        button {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #0056b3;
        }

        #calendar {
            max-width: 100%;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item active">Dashboard</a>
        <a href="#" class="menu-item">Manage Programs</a>
        <a href="#" class="menu-item">Resource Requests</a>
        <a href="#" class="menu-item">Upgrade Requests</a>
    </div>

    <div class="main-content">
        <div class="header">
            <h1>Welcome, Teacher!</h1>
            <div class="user-info">
                <img src="path/to/avatar.jpg" alt="User Avatar">
                <div>
                    <p>John Doe</p>
                    <p>Teacher</p>
                </div>
            </div>
        </div>

        <!-- Teacher Actions -->
        <div class="info-card">
            <h3>Teacher Actions</h3>
            <div class="button-group">
                <form action="${pageContext.request.contextPath}/teacher/manageDashboard" method="get">
                    <button type="submit">Manage School Dashboard</button>
                </form>
                <form action="${pageContext.request.contextPath}/teacher/addProgram" method="get">
                    <button type="submit">Add New TVPSS Program</button>
                </form>
          <form action="${pageContext.request.contextPath}/teacher/updateProgram" method="post">
          
    <input type="hidden" name="id" value="${program.id}" />
    <button type="submit">Update TVPSS Program</button>
</form>


            </div>
        </div>

        <!-- Resource Management -->
        <div class="info-card">
            <h3>Resource Management</h3>
            <div class="button-group">
                <form action="${pageContext.request.contextPath}/resources/verify" method="get">
                    <button type="submit">Request Resource</button>
                </form>
                <form action="${pageContext.request.contextPath}/teacher/requestUpgrade" method="get">
                <button type="submit">Request TVPSS Upgrade</button>
                </form>

            </div>
        </div>

        <!-- Calendar -->
        <div class="info-card">
            <h3>Calendar</h3>
            <div id="calendar"></div>
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                initialView: 'dayGridMonth',
                headerToolbar: {
                    left: 'prev,next today',
                    center: 'title',
                    right: 'dayGridMonth,timeGridWeek,timeGridDay'
                },
                events: [
                    {
                        title: 'Staff Meeting',
                        start: '2024-06-10T10:00:00'
                    },
                    {
                        title: 'Program Deadline',
                        start: '2024-06-15'
                    },
                    {
                        title: 'Training Workshop',
                        start: '2024-06-20',
                        end: '2024-12-22'
                    }
                ]
            });
            calendar.render();
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
</body>
</html>

