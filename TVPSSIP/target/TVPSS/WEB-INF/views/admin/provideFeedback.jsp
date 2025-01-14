<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback & Suggestions</title>
    <style>
        /* General Body Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #000; /* Dark theme background */
            margin: 0;
            padding: 0;
            color: #fff; /* Default text color */
        }

        /* Sidebar Styling */
        .sidebar {
            width: 250px;
            height: 100vh;
            background-color: #1c1c1c;
            position: fixed;
            top: 0;
            left: 0;
            padding: 20px 0;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            border-top-left-radius: 15px;  /* Round top-left corner */
            border-bottom-left-radius: 15px;  /* Round bottom-left corner */
        }

        .sidebar .logo {
            font-size: 20px;
            font-weight: bold;
            color: #fff;
            text-align: center;
            margin-bottom: 20px;
            width: 100%;
        }

        .sidebar a {
            display: block;
            padding: 15px 15px;
            color: #ccc;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s, color 0.3s;
            width: 88%;
        }

        .sidebar a:hover, .sidebar a.active {
            background-color: #f0c808; /* Highlight color */
            color: #000;
        }

        /* Main Content Area */
        .content {
            margin-left: 270px; /* Sidebar width */
            padding: 30px;
        }

        /* White box around the grey box */
        .outer-container {
            background-color: #fff; /* White background for the outer container */
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
            max-width: 800px;
            margin: auto;
        }

        /* Grey box containing the form */
        .container {
            background-color: #f2f2f2; /* Light grey background for the form container */
            border-radius: 10px;
            padding: 30px;
            color: #000;
            box-shadow: none;
        }

        /* Title (Feedback & Suggestions) */
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
            color: #000;
            text-align: left; /* Align title to the left */
        }

        label {
            display: block;
            font-size: 16px;
            margin-bottom: 8px;
            color: #000; /* Black text for labels */
        }

        input, textarea, select, .button {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff; /* White background for input fields */
            color: #000; /* Black text inside input fields */
            font-size: 16px;
        }

        textarea {
            height: 120px;
            resize: none;
        }

        input:focus, textarea:focus, select:focus {
            border-color: #f0c808;
            outline: none;
        }

        .button {
            background-color: #f0c808;
            color: #000;
            font-weight: bold;
            cursor: pointer;
            border: none;
            text-align: center;
            transition: background-color 0.3s;
        }

        .button:hover {
            background-color: #e0b607;
        }

        /* Header styling for top-left and top-right */
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 30px;
            background-color: #000;
            color: #fff;
            width: calc(100% - 250px); /* Adjust for sidebar width */
            position: absolute; /* Ensure header stays on top */
            left: 250px; /* Position the header next to the sidebar */
            box-sizing: border-box; /* Prevent overflow */
        }

        /* Adjust margin to ensure the content isn't too far right */
        .header .left {
            font-size: 18px;
            color: #fff; /* Ensure "Welcome Admin" text is white */
            margin-left: 20px; /* Space it from the left edge */
        }

        .header .right {
            font-size: 16px;
        }

        .header .right a {
            color: #fff;
            text-decoration: none;
        }

        .header .right a:hover {
            text-decoration: underline;
        }

        /* Confirmation Modal */
        #confirmationModal {
            display: none; /* Initially hidden */
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background-color: white;
            color: black;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.5);
            z-index: 1000;
        }

        #confirmationModal .btn-group {
            display: flex;
            justify-content: space-around;
        }

        .btn-group button {
            background-color: #f0c808;
            color: black;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .btn-group button:hover {
            background-color: #e0b607;
        }
    </style>
</head>
<body>
    <!-- Header -->
    <div class="header">
        <div class="left">Welcome, Admin</div>
        <div class="right">
            <a href="/home">Home</a> / Feedback & Suggestions
        </div>
    </div>

    <!-- Sidebar -->
    <div class="sidebar">
        <div class="logo">Dashboard</div>
        <a href="/dashboard">Dashboard</a>
        <a href="/profile">Profile</a>
        <a href="/activityList">Activity List</a>
        <a href="/progressTracker">Progress Tracker</a>
        <a href="/resourceAllocation">Resource Allocation</a>
        <a href="/monitorActivity">Monitor Activity</a>
        <a href="/approveUpgrades">Approve School Version Upgrade</a>
        <a href="/programReport">Program Report</a>
        <a href="/eCertificate">E-Certificate</a>
        <a class="active" href="/feedbackSuggestions">Feedback & Suggestions</a>
        <a href="/sendEmail">Send Email & Notifications</a>
    </div>

    <!-- Main Content -->
    <div class="content">
        <div class="outer-container">
            <div class="container">
                <h1>Feedback & Suggestions</h1>

                <form id="feedbackForm">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" placeholder="Enter the school name" required>

                    <label for="idNo">ID No:</label>
                    <input type="text" id="idNo" name="idNo" placeholder="Enter the ID number" required>

                    <label for="issue">Issue:</label>
                    <input type="text" id="issue" name="issue" placeholder="Enter the issue" required>

                    <label for="description">Description:</label>
                    <textarea id="description" name="description" placeholder="Provide a detailed description of the issue" required></textarea>

                    <button class="button" type="button" onclick="showConfirmation()">Report</button>
                </form>
            </div>
        </div>
    </div>

    <!-- Confirmation Modal -->
    <div id="confirmationModal">
        <h2>Are you sure you want to submit the report?</h2>
        <div class="btn-group">
            <button onclick="goBack()">No</button>
            <button onclick="confirmSubmission()">Yes</button>
        </div>
    </div>

    <script>
        // Show confirmation modal
        function showConfirmation() {
            event.preventDefault();  // Prevent the form from being submitted
            document.getElementById('confirmationModal').style.display = 'block';
        }

        // Close confirmation modal without submitting
        function goBack() {
            document.getElementById('confirmationModal').style.display = 'none';
        }

        // Submit the form and display confirmation
        function confirmSubmission() {
            // For now, just log the form submission
            alert("Feedback Submitted Successfully!");
            document.getElementById('feedbackForm').reset();
            document.getElementById('confirmationModal').style.display = 'none';
        }
    </script>
</body>
</html>

