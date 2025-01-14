<!DOCTYPE html>
<html>
<head>
    <title>Program Add Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f9fc;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }
        .status-container {
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            text-align: center;
        }
        .status-container h1 {
            color: #444;
        }
        .status-container p {
            font-size: 18px;
        }
        .status-container .success {
            color: #5cb85c;
        }
        .status-container .failure {
            color: #d9534f;
        }
        .status-container a {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            padding: 10px 15px;
            background-color: #007bff;
            color: white;
            border-radius: 5px;
        }
        .status-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="status-container">
        <h1>${message}</h1>
        <p class="${statusClass}">${statusMessage}</p>
        <a href="${pageContext.request.contextPath}/teacher/addProgram">Back to Add Program</a>
    </div>
</body>
</html>
