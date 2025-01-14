<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Monitor User Activity</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }

        .content {
            max-width: 1200px;
            margin: 20px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
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

        .header .close-btn {
            background-color: transparent;
            border: none;
            font-size: 24px;
            cursor: pointer;
        }

        .overview {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            gap: 20px;
        }

        .overview-card {
            flex: 1;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .overview-card h3 {
            font-size: 18px;
            margin-bottom: 10px;
        }

        .overview-card p {
            font-size: 16px;
            margin: 0;
            font-weight: bold;
        }

        .chart-container {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
            gap: 20px;
        }

        .chart {
            flex: 1;
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .chart canvas {
            max-width: 100%;
        }

        .back-btn {
            display: inline-block;
            margin-top: 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
        }

        .back-btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="content">
        <h2>${userName}</h2>

        <!-- Overview Section -->
        <div class="overview">
            <div class="overview-card">
                <h3>Average Time in System</h3>
                <p>${averageTime}</p>
            </div>
            <div class="overview-card">
                <h3>Total Activities Organized</h3>
                <p>${totalActivities}</p>
            </div>
        </div>

        <!-- Charts Section -->
        <div class="chart-container">
            <div class="chart">
                <h3>Activities On Progress</h3>
                <p><strong>${activitiesOnProgress}</strong> (${completionPercentage}% Completed)</p>
                <canvas id="progressChart"></canvas>
            </div>
            <div class="chart">
                <h3>Activity Progress</h3>
                <canvas id="activityProgressChart"></canvas>
            </div>
            <div class="chart">
                <h3>Activity Over Time</h3>
                <canvas id="activityOverTimeChart"></canvas>
            </div>
        </div>

        <!-- Back Button -->
        <a href="monitor.jsp" class="back-btn">Back</a>
    </div>

    <script>
        // Example data for charts (replace with dynamic data if needed)
        const progressData = {
            datasets: [{
                data: [${completionPercentage}, ${100 - completionPercentage}],
                backgroundColor: ['#007bff', '#f4f4f9'],
            }],
        };

        const progressOptions = {
            cutout: '70%',
        };

        const activityProgressData = {
            labels: ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'],
            datasets: [{
                data: [10, 20, 15, 25, 30, 20, 10],
                backgroundColor: '#007bff',
            }],
        };

        const activityOverTimeData = {
            labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
            datasets: [
                {
                    label: 'Activities Completed',
                    data: [5, 10, 15, 20, 25, 30],
                    borderColor: '#007bff',
                    backgroundColor: 'rgba(0, 123, 255, 0.1)',
                    fill: true,
                },
                {
                    label: 'Activities Planned',
                    data: [10, 15, 20, 25, 30, 35],
                    borderColor: '#ffc107',
                    backgroundColor: 'rgba(255, 193, 7, 0.1)',
                    fill: true,
                },
            ],
        };

        // Initialize Charts
        const progressChart = new Chart(document.getElementById('progressChart'), {
            type: 'doughnut',
            data: progressData,
            options: progressOptions,
        });

        const activityProgressChart = new Chart(document.getElementById('activityProgressChart'), {
            type: 'bar',
            data: activityProgressData,
        });

        const activityOverTimeChart = new Chart(document.getElementById('activityOverTimeChart'), {
            type: 'line',
            data: activityOverTimeData,
        });
    </script>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</body>
</html>
