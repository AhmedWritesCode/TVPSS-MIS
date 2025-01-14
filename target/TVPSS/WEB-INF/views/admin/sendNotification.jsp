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
    </style>
</head>
<body>
    <div class="container">
        <h1>Send Email Notification</h1>
        
        <!-- Display confirmation or error message -->
        <c:if test="${not empty message}">
            <div class="${messageType}">
                <p>${message}</p>
            </div>
        </c:if>
        
      <form action="${pageContext.request.contextPath}/admin/sendNotification" method="post">

            <!-- Email recipients -->
            <div class="form-section">
                <label for="email">To (Recipient):</label>
                <input type="email" id="email" name="email" value="${email}" placeholder="Enter recipient email" required>
            </div>

            <!-- Subject field -->
            <div class="form-section">
                <label for="subject">Subject:</label>
                <input type="text" id="subject" name="subject" value="${subject}" placeholder="Enter subject" required>
            </div>

            <!-- Body field -->
            <div class="form-section">
                <label for="body">Body:</label>
                <textarea id="body" name="body" placeholder="Enter the message to be sent" required>${body}</textarea>
            </div>

            <!-- Submit button -->
            <button class="button" type="submit">Send Notification</button>
        </form>
    </div>
</body>
</html>

