<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Status</title>
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
    .main {
        padding: 20px;
    }

    /* Header Styling */
    .header {
        background-color: #1f272b; /* Dark background */
        color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 20px;
    }

    .header h1 {
        font-size: 24px;
        color: #f5a425; /* Golden yellow accent */
        text-transform: uppercase;
        letter-spacing: 1px;
        margin: 0;
    }

    /* Content Styling */
    .content {
        display: flex;
        gap: 20px;
    }

    /* Left Panel Styling */
    .left-panel {
        width: 300px;
        background-color: #6c63ff; /* Vibrant purple */
        color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .left-panel h2 {
        font-size: 22px;
        margin-bottom: 10px;
        text-transform: uppercase;
        letter-spacing: 1px;
    }

    .left-panel p {
        font-size: 16px;
        line-height: 1.5;
        margin: 5px 0;
    }

    /* Form Container Styling */
    .form-container {
        flex-grow: 1;
        background-color: #fff; /* White background */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    .form-container h3 {
        font-size: 22px;
        color: #1f272b; /* Dark text for title */
        text-transform: uppercase;
        letter-spacing: 1px;
        margin-bottom: 20px;
    }

    .form-container label {
        font-size: 16px;
        color: #333; /* Dark text for labels */
        margin-bottom: 10px;
        display: block;
    }

    .form-container input,
    .form-container textarea,
    .form-container select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 16px;
        margin-bottom: 20px;
        transition: border-color 0.3s ease;
    }

    .form-container input:focus,
    .form-container textarea:focus,
    .form-container select:focus {
        border-color: #6c63ff; /* Vibrant purple on focus */
        outline: none;
    }

    .form-container button {
        width: 100%;
        background-color: #6c63ff; /* Vibrant purple */
        color: white;
        border: none;
        padding: 12px;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        text-transform: uppercase;
        letter-spacing: 1px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .form-container button:hover {
        background-color: #f5a425; /* Golden yellow on hover */
        transform: translateY(-3px);
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .content {
            flex-direction: column;
        }

        .left-panel {
            width: 100%;
        }

        .form-container {
            width: 100%;
        }
    }
</style></head>
<body>
    <jsp:include page="/WEB-INF/views/student/navbar.jsp" />

    <div class="main">
        <div class="content">
        
			<div class="left-panel">
			    <h2>TVPSS Program Talent Application</h2>
			    <p>
			        This application form is for students who wish to join the <strong>TVPSS </strong> programs. 
			        TVPSS offers a variety of programs designed to help you develop your skills in video production, streaming, media creation, and more.
			    </p>
			    <p>
			        Whether you're interested in becoming a <strong>Marketing Specialist</strong>, <strong>Photographer</strong>, or <strong>Editor</strong>, 
			        there's a place for you to grow and flourish in our programs. Join us and be part of a team that creates impactful and engaging content!
			    </p>
			</div>            

		<div class="form-container">
                <h3>Fill Out Personal Information</h3>
  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>


    <!-- Form to submit the Crew Application -->
    <form:form action="${pageContext.request.contextPath}/student/submitCrewApplication" method="POST" modelAttribute="crewApplication">
        <label for="name">Name</label>
        <form:input path="name" id="name" placeholder="Enter your name" required="true" />

        <label for="position">Position</label>
        <form:select path="position" id="position" required="true">
            <form:option value="" label="Select Position" />
            <form:option value="Editor" label="Editor" />
            <form:option value="Photographer" label="Photographer" />
            <form:option value="Journalist" label="Journalist" />
            <form:option value="Host" label="Host" />
            <form:option value="Media" label="Media" />
            <form:option value="Arts" label="Arts" />
            <form:option value="Business" label="Business" />
        </form:select>

        <label for="comment">Comment Section</label>
        <form:textarea path="comment" id="comment" rows="4" placeholder="Add comments here..."></form:textarea>

        <button type="submit">Submit Application</button>
    </form:form>

</div>
        </div>
    </div>
    
        <jsp:include page="/WEB-INF/views/includes/footer.jsp" />
    
</body>
</html>

