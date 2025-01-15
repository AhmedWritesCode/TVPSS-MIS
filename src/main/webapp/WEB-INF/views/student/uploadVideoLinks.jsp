<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Studio</title>
    
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        /* Body Styling */
        body {
            background-color: #f7f7f7; /* Light gray background */
            color: #333; /* Dark text */
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Ensure the body takes at least the full viewport height */
        }

        /* Main Content Styling */
        .main {
            flex-grow: 1; /* Allow main content to grow and fill the space */
            padding: 20px;
        }

        /* Top Panel Styling (Previously Left Panel) */
        .top-panel {
            background-color: #6c63ff; /* Vibrant purple */
            color: white;
            padding: 40px 20px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .top-panel strong {
            font-size: 24px;
            display: block;
            margin-bottom: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .top-panel p {
            font-size: 16px;
            line-height: 1.5;
            margin: 10px 0;
        }

        /* Form Container Styling */
        .form-container {
            background-color: #fff; /* White background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .form-container .form-group {
            margin-bottom: 20px;
        }

        .form-container label {
            font-size: 16px;
            color: #333; /* Dark text for labels */
            margin-bottom: 10px;
            display: block;
        }

        .form-container input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s ease;
        }

        .form-container input:focus {
            border-color: #6c63ff; /* Vibrant purple on focus */
            outline: none;
        }

        .form-container button {
            display: block;
            width: 100%;
            background-color: #6c63ff; /* Vibrant purple */
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .form-container button:hover {
            background-color: #f5a425; /* Golden yellow on hover */
            transform: translateY(-3px);
        }

        /* Footer Styling */
        footer {
            background-color: #1f272b; /* Dark background */
            color: white;
            padding: 20px;
            text-align: center;
            margin-top: auto; /* Push footer to the bottom */
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .top-panel {
                padding: 20px;
            }

            .top-panel strong {
                font-size: 20px;
            }

            .top-panel p {
                font-size: 14px;
            }

            .form-container {
                padding: 15px;
            }
        }        
        </style>
    
</head>
<body>

    <jsp:include page="/WEB-INF/views/student/navbar.jsp" />

    <div class="main">
        <div class="content">
        <!-- Top Panel (Previously Left Panel) -->
        <div class="top-panel">
            <strong>Upload YouTube Video Link</strong>
            <p>Paste the YouTube video link or other platform links that showcase your potential. We are excited to see you.</p>
            <p>Alternatively, you can share your LinkedIn profile or social media account if you think it's more suitable to showcase your talent.</p>				   
				    </div>
            <div class="form-container">
                <form action="${pageContext.request.contextPath}/student/uploadVideoLinks" method="POST">
                   
                    <div class="form-group">
                        <label for="videoLinkInput">Enter Video Link:</label>
                        <input type="text" id="videoLinkInput" name="videoLink" placeholder="Paste your video link here" required>
                    </div>
                    <button type="submit">Next</button>
                </form>
            </div>
        </div>
    </div>
        <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>


