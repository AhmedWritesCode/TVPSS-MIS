<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Upload Status</title>
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

        /* Container Styling */
        .container {
            background-color: #fff; /* White background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            margin: 0 auto; /* Center the container */
            text-align: center;
        }

        /* Heading Styling */
        h1 {
            font-size: 28px;
            color: #1e6de2; /* Vibrant blue */
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Message Styling */
        .message {
            font-size: 18px;
            color: #555; /* Dark gray text */
            margin-bottom: 30px;
        }

        .message .error {
            color: #ff4d4d; /* Red for errors */
        }

        .message .success {
            color: #00cc66; /* Green for success */
        }

        .message a {
            color: #6c63ff; /* Vibrant purple for links */
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .message a:hover {
            color: #f5a425; /* Golden yellow on hover */
        }

        /* Button Styling */
        .button {
            display: inline-block;
            background-color: #6c63ff; /* Vibrant purple */
            color: white;
            padding: 12px 24px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button:hover {
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
            .container {
                padding: 20px;
            }

            h1 {
                font-size: 24px;
            }

            .message {
                font-size: 16px;
            }

            .button {
                width: 100%;
            }
        }
    </style>
</head>
<body>

    <jsp:include page="/WEB-INF/views/student/navbar.jsp" />

    <div class="main">
        <div class="container">
            <h1>Upload Status</h1>

            <!-- Check for error or success messages -->
            <div class="message">
                <c:if test="${not empty error}">
                    <p class="error">${error}</p>
                </c:if>
                <c:if test="${not empty message}">
                    <p class="success">${message}</p>
                    <p>Uploaded Video Link: <a href="${videoLink}" target="_blank">${videoLink}</a></p>
                </c:if>
            </div>
          <form action="${pageContext.request.contextPath}/dashboard/studentDashboard" method="GET">
    <button class="button" type="submit">Go Back to Dashboard</button>
</form>


        </div>
    </div>
    
        <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>

  