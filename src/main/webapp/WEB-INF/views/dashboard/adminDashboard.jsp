<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage = "error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Adminstrator Home</title>
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

    /* Content Styling */
    .content {
        padding: 20px;
    }

    /* Header Styling */
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 20px;
        background-color: #1f272b; /* Dark background */
        color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .header h1 {
        font-size: 28px;
        color: #f5a425; /* Golden yellow accent */
        text-transform: uppercase;
        letter-spacing: 1px;
        margin: 0;
    }

    .header span {
        font-size: 16px;
        color: #ccc; /* Light gray text */
    }

    /* Card Styling */
    .card {
        background-color: #fff; /* White background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .card h2 {
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

    .button-group form {
        flex: 1 1 calc(33.333% - 10px);
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
        width: 100%;
    }

    button:hover {
        background-color: #f5a425; /* Golden yellow on hover */
        transform: translateY(-3px);
    }

    /* Table Styling */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px;
        text-align: left;
    }

    th {
        background-color: #6a11cb; /* Vibrant purple */
        color: white;
    }

    td {
        background-color: #f9f9f9;
    }

    .table-actions button {
        background-color: #28a745; /* Green for actions */
        border: none;
        padding: 8px 10px;
        color: white;
        border-radius: 5px;
        font-size: 14px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .table-actions button:hover {
        background-color: #218838; /* Darker green on hover */
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .content {
            margin-left: 0;
            padding: 10px;
        }

        .header h1 {
            font-size: 24px;
        }

        .card h2 {
            font-size: 20px;
        }

        .button-group form {
            flex: 1 1 100%;
        }

        button {
            width: 100%;
        }
    }
</style>
</head>
<body>

    <!-- Include Navbar -->
    <jsp:include page="/WEB-INF/views/admin/navbar.jsp" />


    <div class="content">
        <div class="header">
            <h1>Welcome, Admin!</h1>
        </div>

        <!-- Admin Action Buttons -->
        <div class="card">
            <h2 class="section-title">Admin Actions</h2>
            <div class="button-group">
                <form action="<%= request.getContextPath() %>/admin/trackProgress" method="get">
                    <button type="submit">Track School Progress</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/approveSchoolVersion" method="get">
                    <button type="submit">Approve Version Upgrade</button>
                </form>
                <form action="${pageContext.request.contextPath}/admin/monitor" method="get">
                    <button type="submit">LIST OF USERS</button>
                </form>
                
                <form action="${pageContext.request.contextPath}/resources" method="get">
                    <button type="submit">Allocate Resource and Equipment</button>
                </form>
            </div>
        </div>

        <!-- Admin Reporting Section -->
      <div class="card">
            <h2 class="section-title">Reporting</h2>
        
            <form action="<%= request.getContextPath() %>/admin/viewReport" method="get">
                <button type="submit">View Report</button>
            </form>
        </div>
        <!-- Reporting Action Buttons -->
        <div class="card">
            <h2 class="section-title">Reporting Actions</h2>
            <div class="button-group">
                <form action="<%= request.getContextPath() %>/admin/generateCertifications" method="get">
                    <button type="submit">List of TVPPS Participants</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/provideFeedback" method="get">
                    <button type="submit">Provide Feedback</button>
                </form>
                <form action="<%= request.getContextPath() %>/admin/sendNotification" method="get">
                    <button type="submit">Send Notifications</button>
                </form>
            </div>
        </div>
    </div>
    
        <!-- Include Footer -->
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
</body>
</html>
