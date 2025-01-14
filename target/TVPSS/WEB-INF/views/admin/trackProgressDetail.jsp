<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Progress Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .content {
            display: flex;
            justify-content: space-between;
        }

        .left-section, .right-section {
            width: 48%;
            padding: 10px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .chart {
            width: 100%;
            height: 200px;
            background-color: #e9ecef;
            margin-bottom: 10px;
            border-radius: 8px;
        }

        .calendar {
            width: 100%;
            height: 200px;
            background-color: #e9ecef;
            border-radius: 8px;
        }

        .back-btn {
            background-color: #007bff;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>School Progress Details</h1>
    <div class="content">
        <div class="left-section">
            <h3>Activity</h3>
            <div class="chart">Graph Placeholder</div>
        </div>
        <div class="right-section">
            <h3>Upcoming Events</h3>
            <div class="calendar">Calendar Placeholder</div>
        </div>
    </div>
    <div style="margin-top: 20px;">
        <form action="trackProgress" method="get">
            <button class="back-btn">Back to List</button>
        </form>
    </div>
</body>
</html>
