<%@ page import="java.util.HashMap" %>
<%
    String programId = request.getParameter("programId");

    // Simulated data for report details
    HashMap<String, String> reportDetails = new HashMap<>();
    reportDetails.put("programId", programId);

    if ("1".equals(programId)) {
        reportDetails.put("programName", "TVPSS - School A");
        reportDetails.put("status", "Active");
        reportDetails.put("startDate", "2024-01-01");
        reportDetails.put("endDate", "2024-06-01");
        reportDetails.put("totalParticipants", "150");
        reportDetails.put("feedback", "Very successful program.");
    } else if ("2".equals(programId)) {
        reportDetails.put("programName", "TVPSS - School B");
        reportDetails.put("status", "Inactive");
        reportDetails.put("startDate", "2023-03-01");
        reportDetails.put("endDate", "2023-09-01");
        reportDetails.put("totalParticipants", "100");
        reportDetails.put("feedback", "Average feedback. Needs improvement.");
    } else if ("3".equals(programId)) {
        reportDetails.put("programName", "TVPSS - School C");
        reportDetails.put("status", "Active");
        reportDetails.put("startDate", "2024-02-01");
        reportDetails.put("endDate", "2024-07-01");
        reportDetails.put("totalParticipants", "200");
        reportDetails.put("feedback", "Highly praised by participants.");
    } else {
        reportDetails.put("programName", "Unknown");
        reportDetails.put("status", "N/A");
        reportDetails.put("startDate", "N/A");
        reportDetails.put("endDate", "N/A");
        reportDetails.put("totalParticipants", "N/A");
        reportDetails.put("feedback", "No feedback available.");
    }

    request.setAttribute("reportDetails", reportDetails);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Report Details</title>
    <style>
        /* Same styles as viewReports.jsp for consistency */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }
        .container {
            width: 60%;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        h1 {
            font-size: 26px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: white;
        }
        td {
            background-color: #f9f9f9;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Report Details for Program ID: ${param.programId}</h1>
        <table>
            <tr><th>Field</th><th>Details</th></tr>
            <tr><td>Program Name</td><td>${reportDetails.programName}</td></tr>
            <tr><td>Status</td><td>${reportDetails.status}</td></tr>
            <tr><td>Start Date</td><td>${reportDetails.startDate}</td></tr>
            <tr><td>End Date</td><td>${reportDetails.endDate}</td></tr>
            <tr><td>Total Participants</td><td>${reportDetails.totalParticipants}</td></tr>
            <tr><td>Feedback</td><td>${reportDetails.feedback}</td></tr>
        </table>
        <button onclick="window.history.back()">Go Back</button>
    </div>
</body>
</html>

