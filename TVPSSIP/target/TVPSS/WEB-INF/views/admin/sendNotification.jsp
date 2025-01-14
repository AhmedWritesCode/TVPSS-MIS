<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Send Notification</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 26px;
            color: #333;
            margin-bottom: 20px;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="email"] {
            margin-bottom: 10px;
        }
        textarea {
            height: 150px;
            resize: vertical;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
        .button:hover {
            background-color: #218838;
        }
        .form-section {
            margin-bottom: 20px;
            text-align: left;
        }
        .form-section label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-section input[type="datetime-local"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-section input[type="text"], .form-section input[type="email"] {
            width: 100%;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Send Email Notification</h1>
        <form action="/sendNotification" method="post">
            <!-- Email recipients -->
            <div class="form-section">
                <label for="emails">To (Recipients):</label>
                <input type="email" id="emails" name="emails" placeholder="Enter emails separated by commas" required>
            </div>

            <!-- CC field -->
            <div class="form-section">
                <label for="cc">CC:</label>
                <input type="email" id="cc" name="cc" placeholder="Enter CC emails separated by commas">
            </div>

            <!-- BCC field -->
            <div class="form-section">
                <label for="bcc">BCC:</label>
                <input type="email" id="bcc" name="bcc" placeholder="Enter BCC emails separated by commas">
            </div>

            <!-- Subject field -->
            <div class="form-section">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
            </div>

            <!-- Body field -->
            <div class="form-section">
                <label for="body">Body:</label>
                <textarea id="body" name="body" placeholder="Enter the message to be sent" required></textarea>
            </div>

            <!-- Send Later field -->
            <div class="form-section">
                <label for="sendLater">Send Later:</label>
                <input type="datetime-local" id="sendLater" name="sendLater">
            </div>

            <!-- Submit button -->
            <button class="button" type="submit">Send Notification</button>
        </form>

        <!-- Display notification send confirmation -->
        <c:if test="${not empty notificationStatus}">
            <p style="color: green; font-size: 18px;">${notificationStatus}</p>
        </c:if>
    </div>
</body>
</html>

