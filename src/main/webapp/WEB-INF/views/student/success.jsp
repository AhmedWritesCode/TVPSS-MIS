<!DOCTYPE html>
<html>
<head>
    <title>Success</title>
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
            justify-content: center;
            align-items: center;
            height: 100vh;
            text-align: center;
        }

        /* Success Container */
        .success-container {
            background-color: #fff; /* White background */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            animation: fadeIn 1s ease-in-out;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Success Heading */
        .success-heading {
            font-size: 32px;
            color: #1e6de2; /* Vibrant blue */
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        /* Success Message */
        .success-message {
            font-size: 18px;
            color: #555; /* Dark gray text */
            margin-bottom: 30px;
        }

        /* Success Button */
        .success-button {
            display: inline-block;
            background-color: #6c63ff; /* Vibrant purple */
            color: white;
            padding: 12px 24px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .success-button:hover {
            background-color: #f5a425; /* Golden yellow on hover */
            transform: translateY(-3px);
        }
    </style>
    </head>
<body>
    <div class="success-container">
        <h1 class="success-heading">Success!</h1>
        <p class="success-message">${message}</p>
        <a class="success-button" href="${pageContext.request.contextPath}/dashboard/studentDashboard">Go back to the form</a>
    </div>
</body>
</html>
