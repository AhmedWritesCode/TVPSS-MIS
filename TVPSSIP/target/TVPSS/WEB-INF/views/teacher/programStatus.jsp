<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Status</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f7fc;
            color: #333;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            text-align: center;
        }
        h1 {
            font-size: 28px;
            color: #4CAF50;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #555;
            margin: 20px 0;
        }
        .status-message {
            font-size: 20px;
            color: #333;
            background-color: #e7f7e7;
            border: 1px solid #4CAF50;
            border-radius: 5px;
            padding: 20px;
            font-weight: bold;
            margin: 20px 0;
        }
        .button-container {
            margin-top: 20px;
        }
        .button-container a {
            display: inline-block;
            background-color: #007bff;
            color: #fff;
            padding: 12px 24px;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s;
        }
        .button-container a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Program Status</h1>
        <div class="status-message">
            <p>${message}</p>
        </div>
        
    </div>
</body>
</html>
