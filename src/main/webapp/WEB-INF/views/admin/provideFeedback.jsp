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
        background-color: #fff; /* White background */
        margin: 0;
        padding: 0;
        color: #333; /* Dark text color */
        display: flex;
        flex-direction: column;
        min-height: 100vh; /* Ensure the body takes up the full viewport height */
    }

    /* Header Styling */
    .header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 10px 20px; /* Reduced padding */
        background-color: #fff; /* White background */
        color: #333; /* Dark text color */
        width: 100%; /* Full width */
        box-sizing: border-box; /* Prevent overflow */
        position: fixed; /* Fixed position to stay at the top */
        top: 0;
        left: 0;
        z-index: 1000; /* Ensure header stays on top */
        border-bottom: 1px solid #ddd; /* Add a subtle border */
    }

    .header .left {
        font-size: 18px;
        color: #333; /* Dark text color */
    }

    .header .right {
        font-size: 16px;
    }

    .header .right a {
        color: #333; /* Dark text color */
        text-decoration: none;
    }

    .header .right a:hover {
        text-decoration: underline;
    }

    /* Sidebar Styling */
    .sidebar {
        width: 250px;
        height: 100vh;
        background-color: #f8f9fa; /* Light gray background */
        position: fixed;
        top: 60px; /* Offset for the header */
        left: 0;
        padding: 20px 0;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
        border-right: 1px solid #ddd; /* Add a subtle border */
    }

    .sidebar .logo {
        font-size: 20px;
        font-weight: bold;
        color: #333; /* Dark text color */
        text-align: center;
        margin-bottom: 20px;
        width: 100%;
    }

    .sidebar a {
        display: block;
        padding: 10px 15px; /* Reduced padding */
        color: #333; /* Dark text color */
        text-decoration: none;
        font-size: 16px;
        transition: background-color 0.3s, color 0.3s;
        width: 88%;
    }

    .sidebar a:hover, .sidebar a.active {
        background-color: #007bff; /* Blue background on hover/active */
        color: #fff; /* White text on hover/active */
    }

    /* Main Content Area */
    .content {
        margin-left: 250px; /* Sidebar width */
        padding: 20px; /* Reduced padding */
        margin-top: 60px; /* Offset for the header */
        flex: 1; /* Allow the content to grow and fill the remaining space */
    }

    /* White box around the grey box */
    .outer-container {
        background-color: #fff; /* White background */
        border-radius: 8px; /* Slightly rounded corners */
        padding: 20px; /* Reduced padding */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        max-width: 800px;
        margin: 0 auto; /* Center the container */
    }

    /* Grey box containing the form */
    .container {
        background-color: #f8f9fa; /* Light gray background */
        border-radius: 8px; /* Slightly rounded corners */
        padding: 20px; /* Reduced padding */
        color: #333; /* Dark text color */
    }

    /* Title (Feedback & Suggestions) */
    h1 {
        font-size: 24px; /* Slightly smaller font size */
        margin-bottom: 15px; /* Reduced margin */
        color: #333; /* Dark text color */
        text-align: left; /* Align title to the left */
    }

    label {
        display: block;
        font-size: 14px; /* Slightly smaller font size */
        margin-bottom: 5px; /* Reduced margin */
        color: #333; /* Dark text color */
    }

    input, textarea, select, .button {
        width: 100%;
        padding: 10px; /* Reduced padding */
        margin-bottom: 15px; /* Reduced margin */
        border: 1px solid #ddd; /* Light border */
        border-radius: 5px; /* Slightly rounded corners */
        background-color: #fff; /* White background for input fields */
        color: #333; /* Dark text inside input fields */
        font-size: 14px; /* Slightly smaller font size */
    }

    textarea {
        height: 100px; /* Reduced height */
        resize: none;
    }

    input:focus, textarea:focus, select:focus {
        border-color: #007bff; /* Blue border on focus */
        outline: none;
    }

    .button {
        background-color: #007bff; /* Blue button background */
        color: #fff; /* White text */
        font-weight: bold;
        cursor: pointer;
        border: none;
        text-align: center;
        transition: background-color 0.3s;
    }

    .button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }

    /* Confirmation Modal */
    #confirmationModal {
        display: none; /* Initially hidden */
        position: fixed;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #fff; /* White background */
        color: #333; /* Dark text color */
        padding: 20px;
        border-radius: 8px; /* Slightly rounded corners */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        z-index: 1000;
    }

    #confirmationModal .btn-group {
        display: flex;
        justify-content: space-around;
    }

    .btn-group button {
        background-color: #007bff; /* Blue button background */
        color: #fff; /* White text */
        padding: 10px 20px;
        border: none;
        border-radius: 5px; /* Slightly rounded corners */
        cursor: pointer;
    }

    .btn-group button:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }

    /* Success Message */
    #successMessage {
        display: none;
        color: #28a745; /* Green text for success */
        font-size: 16px; /* Slightly smaller font size */
        margin-top: 15px; /* Reduced margin */
        }
        </style>
</head>
<body>
    <!-- Header -->
    <jsp:include page="/WEB-INF/views/admin/navbar.jsp" />


  <!-- Main Content -->
<div class="content">
    <div class="outer-container">
        <div class="container">
            <h1>Feedback & Suggestions</h1>
            <form id="feedbackForm" action="${pageContext.request.contextPath}/admin/provideFeedback" method="POST">

                <label for="name">School Name:</label>
                <input type="text" id="name" name="schoolName" placeholder="Enter the school name" required>

                <label for="issue">Issue:</label>
                <input type="text" id="issue" name="issue" placeholder="Enter the issue" required>

                <label for="description">Description:</label>
                <textarea id="description" name="feedback" placeholder="Provide a detailed description of the issue" required></textarea>

                <button class="button" type="button" onclick="showConfirmation(event)">Report</button>
            </form>

            <!-- Confirmation Modal -->
            <div id="confirmationModal" style="display: none; position: fixed; background: rgba(0, 0, 0, 0.5); padding: 20px; top: 20%; left: 50%; transform: translate(-50%, -20%); border-radius: 8px; text-align: center; z-index: 1000;">
                <h2>Are you sure you want to submit the report?</h2>
                <div class="btn-group">
                    <button onclick="goBack()" style="margin-right: 10px; padding: 10px 20px; background-color: red; color: white; border: none; cursor: pointer;">No</button>
                    <button onclick="confirmSubmission()" style="padding: 10px 20px; background-color: green; color: white; border: none; cursor: pointer;">Yes</button>
                </div>
            </div>

            <!-- Success Message -->
            <div id="successMessage" style="display: none; margin-top: 20px; color: green; font-weight: bold;">
                Feedback Submitted Successfully!
            </div>
        </div>
    </div>
</div>

<script>
    // Show confirmation modal
    function showConfirmation(event) {
        event.preventDefault(); // Prevent the form from being submitted
        document.getElementById('confirmationModal').style.display = 'block';
    }

    // Close confirmation modal without submitting
    function goBack() {
        document.getElementById('confirmationModal').style.display = 'none';
    }

    // Submit the form and display confirmation message
    function confirmSubmission() {
        document.getElementById('confirmationModal').style.display = 'none'; // Hide modal
        document.getElementById('successMessage').style.display = 'block'; // Show success message

        // Simulate a delay for better user experience, then submit
        setTimeout(() => {
            document.getElementById('feedbackForm').submit();
        }, 1000);
    }
</script>

    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />

</body>
</html>