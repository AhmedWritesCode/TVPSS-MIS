<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crew Application</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
        }
        .sidebar {
            width: 250px;
            background-color: #000;
            color: #fff;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .sidebar .logo {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            padding: 20px 0;
        }
        .sidebar .menu a {
            padding: 15px 20px;
            color: #fff;
            text-decoration: none;
            display: flex;
            align-items: center;
        }
        .sidebar .menu a:hover, .sidebar .menu a.active {
            background-color: #ffcc00;
            color: #000;
        }
        .main {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }
        .header {
            background-color: #fff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .content {
            padding: 20px;
            display: flex;
            gap: 20px;
        }
        .left-panel {
            flex: 1;
            background-color: #6c63ff;
            color: #fff;
            padding: 20px;
            border-radius: 8px;
        }
        .left-panel h2 {
            margin-bottom: 10px;
        }
        .left-panel p {
            margin: 5px 0;
        }
        .form-container {
            flex: 1;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }
        .form-container h3 {
            margin-bottom: 10px;
        }
        .form-container label {
            font-size: 14px;
            display: block;
            margin-bottom: 5px;
        }
        .form-container input, .form-container textarea, .form-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container button {
            width: 100%;
            background-color: #6c63ff;
            color: #fff;
            border: none;
            padding: 10px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #5753d5;
        }
    </style>
</head>
<body>
    <div class="sidebar">
        <div class="logo">TBC TVPSS</div>
        <div class="menu">
            <a href="#">Dashboard</a>
            <a href="#">Profile</a>
            <a href="#">Activity List</a>
            <a href="#" class="active">Crew Application</a>
            <a href="#">Video Studio</a>
        </div>
    </div>
    <div class="main">
        <div class="header">
            <div>Welcome</div>
            <div>
                <span>📧</span>
                <span>🔔</span>
                
            </div>
        </div>
        <div class="content">
            <div class="left-panel">
                <h2>Welcome</h2>
                <p>SMK TAMAN UNIVERSITI</p>
                <p>Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru, Johor</p>
                <img src="mic-set-icon.png" alt="Mic Set" style="width: 100%; max-width: 200px;">
            </div>
            <div class="form-container">
                <h3>Fill Out Personal Information</h3>
                <form action="SubmitCrewApplication" method="POST" enctype="multipart/form-data">
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Enter your name" required>
                    
                    <label for="position">Position</label>
                    <select id="position" name="position" required>
                        <option value="" disabled selected>Select Position</option>
                        <option value="Host">Host</option>
                        <option value="Camera Crew">Camera Crew</option>
                        <option value="Editor">Editor</option>
                    </select>

                    <label for="applicationDate">Application Date</label>
                    <input type="date" id="applicationDate" name="applicationDate" required>

                    <label for="document">Supporting Document</label>
                    <input type="file" id="document" name="document" accept=".pdf,.doc,.docx">

                    <label for="comment">Comment Section</label>
                    <textarea id="comment" name="comment" rows="4" placeholder="Add comments here..."></textarea>

                    <button type="submit">Continue</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

