<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            padding: 20px;
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

        #calendar {
            max-width: 100%;
            margin: 0 auto;
        }
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            padding: 20px;
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
            flex-direction: column;
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

        .calendar,
        .activities {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
            width: calc(33.333% - 20px);
        }

        .card h4 {
            margin: 0 0 10px;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <h2>TBC TVPSS</h2>
        <a href="#" class="menu-item active">Dashboard</a>
        <a href="#" class="menu-item">Profile</a>
        <a href="#" class="menu-item">Activity List</a>
        <a href="#" class="menu-item">Crew Application</a>
        <a href="#" class="menu-item">Video Studio</a>
    </div>

    <div class="main-content">
        <div class="header">
            <h1>Welcome, Leon!</h1>
            <div class="user-info">
                <img src="path/to/avatar.jpg" alt="User Avatar">
                <div>
                    <p>Daniel Hakim</p>
                    <p>Student</p>
                </div>
            </div>
        </div>

        <div class="info-card">
            <h3>Information</h3>
            <p>SMK TAMAN UNIVERSITI</p>
            <p>Jalan Pendidikan, Taman Universiti, 81300 Johor Bahru, Johor</p>
            <p>Email: daniel@gmail.com</p>
            <p>Contact: 012-3456789</p>
        </div>

        <div class="info-card button-group">
            <h3>Actions</h3>
            <form action="<%= request.getContextPath() %>/student/createVideo" method="get">
                <button type="submit">Upload Video Link</button>
            </form>
            <form action="${pageContext.request.contextPath}/student/submitCrewApplication" method="post">
                <button type="submit">Submit TVPSS Crew Application</button>
            </form>
        </div>

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
                        title: 'Sport Day',
                        start: '2024-06-25'
                    },
                    {
                        title: 'Math Olympiad',
                        start: '2024-06-10',
                        end: '2024-06-12'
                    },
                    {
                        title: 'Science Fair',
                        start: '2024-06-18T10:00:00'
                    }
                ]
            });
            calendar.render();
        });
    </script>
</body>
</html>


