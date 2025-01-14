<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Studio</title>
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
        .header div:last-child {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .header div:last-child span {
            font-size: 20px;
        }
        .content {
            display: flex;
            flex: 1;
        }
        .left-panel {
            width: 300px;
            background-color: #6c63ff;
            color: #fff;
            padding: 20px;
            text-align: center;
        }
        .left-panel h2 {
            margin-bottom: 10px;
        }
        .left-panel p {
            margin: 5px 0;
        }
        .left-panel img {
            margin-top: 20px;
            width: 100%;
            max-width: 200px;
        }
        .form-container {
            flex-grow: 1;
            background-color: #fff;
            border-radius: 8px;
            margin: 20px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .form-container .steps {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .form-container .steps div {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 14px;
        }
        .form-container .steps div::before {
            content: "✔";
            display: inline-block;
            width: 20px;
            height: 20px;
            border-radius: 50%;
            background-color: #6c63ff;
            color: #fff;
            text-align: center;
            line-height: 20px;
        }
        .form-container .video-details {
            display: flex;
            gap: 20px;
        }
        .form-container .video-details div {
            flex: 1;
        }
        .form-container .video-details input,
        .form-container .video-details textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .form-container button {
            display: block;
            width: 100%;
            background-color: #6c63ff;
            color: #fff;
            border: none;
            padding: 10px;
            margin-top: 20px;
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
            <a href="#">Crew Application</a>
            <a href="#" class="active">Video Studio</a>
        </div>
    </div>
    <div class="main">
        <div class="header">
            <div>Welcome</div>
            <div>
                <span>📧</span>
                <span>🔔</span>
                <span></span>
            </div>
        </div>
        <div class="content">
            <div class="left-panel">
                
                <p>SMK TAMAN UNIVERSITI</p>
                <p>Jalan Pendidikan, Taman Universiti,<br>81300 Johor Bahru, Johor</p>
                <img src="mic-set-icon.png" alt="Mic Set">
            </div>
            <div class="form-container">
            <form action="${pageContext.request.contextPath}/student/uploadVideoLinks" method="POST">
                <div class="steps">
                    <div>Step 1 Upload Video (In Progress)</div>
                    <div>Step 2 Video Details (In Progress)</div>
                </div>
                <div class="video-details">
                    <div>
                        <label>Video Thumbnail</label>
                        <input type="file" accept="image/*">
                    </div>
                    <div>
                        <label>Upload Video Directly</label>
                        <input type="file" accept="video/*">
                        <div style="text-align: center; margin: 10px 0;">OR</div>
                      
           
            <div class="form-group">
                <label for="videoLinkInput">Enter Video Link:</label>
                <input type="text" id="videoLinkInput" name="videoLink" placeholder="Paste your video link here" required>
            </div>
            <button type="submit">Next</button>
        </form>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>


