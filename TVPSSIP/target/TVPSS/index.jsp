<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TVPSS - Internet Explorers</title>
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f2f4f8;
            margin: 0;
            padding: 0;
            color: #333;
            line-height: 1.6;
            text-align: center;
        }

        .container {
            width: 80%;
            margin: 50px auto;
            padding: 40px;
            background-color: #ffffff;
            border-radius: 16px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
        }

        h1 {
            font-size: 36px;
            color: #1e6de2;
            margin-bottom: 20px;
            font-weight: bold;
        }

        h2 {
            font-size: 28px;
            color: #444;
        }

        h3 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #555;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 30px;
            font-size: 18px;
            color: #666;
        }

        li {
            margin: 8px 0;
        }

        /* Button Group Styles */
        .button-group {
            display: flex;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .button-group form {
            margin: 0; /* Remove extra margin from forms */
        }

        button {
            background-color: #1e6de2;
            color: white;
            padding: 12px 30px;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: transform 0.3s, background-color 0.3s;
        }

        button:hover {
            background-color: #155bb5;
            transform: translateY(-3px);
        }

        /* Media Query for Responsiveness */
        @media (max-width: 768px) {
            .button-group {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>TVPSS - Internet Explorers</h1>
        <h2>Project Title: TVPSS Management System</h2>
        
        <h3>Group Members:</h3>
        <ul>
            <li>Azmain Mahpara Iqbal</li>
            <li>Wajeeha Zeeshan</li>
            <li>Tabinda Zeeshan</li>
            <li>Nur Hanisah Izzati</li>
        </ul>

        <!-- Login and Sign-up Buttons -->
        <div class="button-group">
            <form action="${pageContext.request.contextPath}/login" method="get">
                <button type="submit">Login</button>
            </form>

            <form action="${pageContext.request.contextPath}/signup" method="get">
                <button type="submit">Sign Up</button>
            </form>
        </div>
    </div>
</body>
</html>



