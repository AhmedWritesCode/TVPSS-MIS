<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage = "error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.11.3/main.min.js"></script>
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
        color: #333; /* Default text color */
        margin: 0;
        padding: 0;
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
        transition: background-color 0.3s ease, color 0.3s ease;
    }

    .menu-item:hover,
    .menu-item.active {
        background-color: #f5a425; /* Accent color on hover/active */
        color: black;
    }

    /* Main Content Styling */
    .main-content {
        padding: 20px;
    }

    /* Header Styling */
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
    }

    .header h1 {
        font-size: 24px;
        margin: 0;
        color: #1f272b; /* Dark text for header */
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

    .header .user-info p {
        margin: 0;
        font-size: 14px;
        color: #333; /* Dark text for user info */
    }

    /* Info Card Styling */
    .info-card {
        background-color: #fff; /* White background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .info-card h3 {
        margin: 0 0 10px 0;
        font-size: 20px;
        color: #1f272b; /* Dark text for card title */
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .info-card p {
        font-size: 16px;
        color: #333; /* Dark text for card content */
        line-height: 1.5;
        margin-bottom: 10px;
    }

    /* Button Group Styling */
    .button-group {
        display: flex;
        flex-direction: column;
        gap: 15px;
        margin-bottom: 20px;
    }

    button {
        background-color: #6a11cb; /* Purple button background */
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #f5a425; /* Accent color on hover */
    }

    /* Calendar Styling */
    #calendar {
        max-width: 100%;
        margin: 0 auto;
        background-color: #fff; /* White background for calendar */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Mobile Responsiveness */
    @media (max-width: 768px) {
        .sidebar {
            width: 100%;
            height: auto;
            position: relative;
            padding: 10px;
        }

        .main-content {
            margin-left: 0;
            padding: 10px;
        }

        .header {
            flex-direction: column;
            align-items: flex-start;
        }

        .header .user-info {
            margin-top: 10px;
        }

        .info-card {
            padding: 15px;
        }

        .info-card h3 {
            font-size: 18px;
        }

        .info-card p {
            font-size: 14px;
        }

        button {
            padding: 10px 15px;
            font-size: 14px;
        }
    }
</style>
</head>
<body>

    <!-- Include Navbar -->
    <jsp:include page="/WEB-INF/views/student/navbar.jsp" />
    
    <div class="main-content">
        <div class="header">
            <h1>Welcome, Ahmed!</h1>
        </div>

        <div class="info-card">
            <h3>Information</h3>
            <p>SMK TAMAN UNIVERSITI</p>
            <p>Campus Residence, UTM, Johor Bahru, Johor</p>
            <p>Email: wtvr@gmail.com</p>
            <p>Contact: 012-******</p>
        </div>

        <div class="info-card button-group">
            <h3>OPTIONS</h3>
            
            <form action="${pageContext.request.contextPath}/student/submitCrewApplication" method="post">
                <button type="submit">Submit Talent Application</button>
            </form>
                        
            <form action="<%= request.getContextPath() %>/student/uploadVideoLinksForm" method="get">
                <button type="submit">Share your Linkedin</button>
            </form>
        </div>
            
    <!-- Include Footer -->
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>


