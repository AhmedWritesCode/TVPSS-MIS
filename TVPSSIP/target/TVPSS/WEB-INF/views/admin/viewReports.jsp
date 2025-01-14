<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    // Simulating data for programs
    ArrayList<HashMap<String, String>> programList = new ArrayList<>();
    HashMap<String, String> program1 = new HashMap<>();
    program1.put("programId", "1");
    program1.put("programName", "TVPSS - School A");
    program1.put("status", "Active");

    HashMap<String, String> program2 = new HashMap<>();
    program2.put("programId", "2");
    program2.put("programName", "TVPSS - School B");
    program2.put("status", "Inactive");

    HashMap<String, String> program3 = new HashMap<>();
    program3.put("programId", "3");
    program3.put("programName", "TVPSS - School C");
    program3.put("status", "Active");

    programList.add(program1);
    programList.add(program2);
    programList.add(program3);

    request.setAttribute("programList", programList);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
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
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
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
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>TVPSS Program Reports</h1>
        <p>Below are the reports related to the TVPSS program:</p>

        <table>
            <thead>
                <tr>
                    <th>Program ID</th>
                    <th>Program Name</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="program" items="${programList}">
                    <tr>
                        <td>${program.programId}</td>
                        <td>${program.programName}</td>
                        <td>${program.status}</td>
                        <td>
                            <form action="viewReportDetail.jsp" method="get">
                                <input type="hidden" name="programId" value="${program.programId}" />
                                <button type="submit">View Report</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>

