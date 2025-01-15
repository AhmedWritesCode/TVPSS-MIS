<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage = "error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecturer Dashboard</title>
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
        color: #333; /* Dark text */
        margin: 0;
        padding: 0;
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
        font-size: 28px;
        color: #1f272b; /* Dark text for header */
        text-transform: uppercase;
        letter-spacing: 1px;
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
        font-size: 22px;
        color: #1f272b; /* Dark text for card title */
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-bottom: 20px;
    }

    /* Button Group Styling */
    .button-group {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
    }

    button {
        background-color: #6a11cb; /* Vibrant purple */
        color: white;
        border: none;
        padding: 12px 20px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    button:hover {
        background-color: #f5a425; /* Golden yellow on hover */
        transform: translateY(-3px);
    }

    /* Calendar Styling */
    #calendar {
        max-width: 100%;
        margin: 0 auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .main-content {
            margin-left: 0;
            padding: 10px;
        }

        .header h1 {
            font-size: 24px;
        }

        .info-card h3 {
            font-size: 20px;
        }

        .button-group {
            flex-direction: column;
        }

        button {
            width: 100%;
        }
    }
</style>

</head>
<body>

    <!-- Include Navbar -->
    <jsp:include page="/WEB-INF/views/teacher/navbar.jsp" />

    <div class="main-content">
        <div class="header">
            <h1>Welcome, Ahmed!</h1>
        </div>

        <!-- Teacher Actions -->
        <div class="info-card">
            <h3>Teacher Actions</h3>
            <div class="button-group">
                <form action="${pageContext.request.contextPath}/teacher/manageDashboard" method="get">
                    <button type="submit">Manage School Dashboard</button>
                </form>
                <form action="${pageContext.request.contextPath}/teacher/addProgram" method="get">
                    <button type="submit">Add New TVPSS Program</button>
                </form>
          <form action="${pageContext.request.contextPath}/teacher/updateProgram" method="post">
          
    <input type="hidden" name="id" value="${program.id}" />
    <button type="submit">Update TVPSS Program</button>
</form>


            </div>
        </div>

        <!-- Resource Management -->
        <div class="info-card">
            <h3>Resource Management</h3>
            <div class="button-group">
                <form action="${pageContext.request.contextPath}/resources/verify" method="get">
                    <button type="submit">Request Resource</button>
                </form>
                <form action="${pageContext.request.contextPath}/teacher/requestUpgrade" method="get">
                <button type="submit">Request TVPSS Upgrade</button>
                </form>

            </div>
        </div>
    </div>

    
        <!-- Include Footer -->
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
</body>
</html>

