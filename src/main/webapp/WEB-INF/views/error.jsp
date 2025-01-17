<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage = "true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Error - Page Not Found</title>
  <style>
      /* Basic reset */
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    /* Full-page styling */
    body, html {
      height: 100%;
      font-family: 'Arial', sans-serif;
      display: flex;
      flex-direction: column; /* Stack elements vertically */
      justify-content: space-between; /* Space header, content, and footer evenly */
      background-color: #f2f2f2;
      color: #333;
    }

    /* Header Styling */
    header {
      background-color: #1f272b; /* Dark background */
      padding: 20px 0;
      color: white;
      text-align: center;
    }

    header h1 {
      margin: 0;
      font-size: 24px;
      text-transform: uppercase;
      letter-spacing: 2px;
    }

    header nav ul {
      list-style-type: none;
      margin: 20px 0 0 0;
      padding: 0;
    }

    header nav ul li {
      display: inline-block;
      margin: 0 15px;
    }

    header nav ul li a {
      color: white;
      text-decoration: none;
      font-size: 14px;
      text-transform: uppercase;
      transition: color 0.3s ease;
    }

    header nav ul li a:hover {
      color: #f5a425; /* Accent color on hover */
    }

    /* Main content container */
    .error-container {
      text-align: center;
      max-width: 600px;
      padding: 20px;
      margin: auto; /* Ensure it's centered */
    }

    .error-title {
      font-size: 72px;
      font-weight: bold;
      color: #ff6b6b;
    }

    .error-message {
      font-size: 24px;
      margin: 20px 0;
    }

    .error-description {
      font-size: 16px;
      margin-bottom: 30px;
    }

    .error-button {
      background-color: #ff6b6b;
      color: #fff;
      padding: 12px 24px;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      text-decoration: none;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .error-button:hover {
      background-color: #e63946;
    }

    /* Footer styling to stay at the bottom */
    footer {
      background-color: #1f272b;
      padding: 10px 0;
      color: white;
      text-align: center;
    }

    footer p {
      margin: 0;
      font-size: 14px;
    }

    /* Responsive adjustments */
    @media (max-width: 768px) {
      .error-title {
        font-size: 48px;
      }

      .error-message {
        font-size: 18px;
      }
    }
  </style>
</head>
<body>

    <jsp:include page="/WEB-INF/views/includes/navbar.jsp" />

  <div class="error-container">
    <div class="error-title">404</div>
    <div class="error-message">Oops! Page Not Found</div>
    <div class="error-description">
      The page you're looking for doesn't exist, was removed, or is temporarily unavailable. Please check the URL or navigate back to the homepage. <br>
      Details: 
<% 
  if (exception != null) {
      out.print(exception.getMessage());
  } else {
      out.print("No additional details available.");
  }
%>
    </div>
    <a href="/" class="error-button">Go Back Home</a>
  </div>
  
    <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
  
</body>
</html>
