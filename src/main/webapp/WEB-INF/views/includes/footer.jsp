<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage = "error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<footer>
    <div class="footer-container">
        <p>&copy; 2025 Code & Coffee. All rights reserved.</p>
        <ul class="footer-links">
        </ul>
    </div>
</footer>

<style>
/* Footer Styling */
footer {
    background-color: #1f272b;
    color: white;
    padding: 20px 0;
    text-align: center;
}

.footer-container {
    max-width: 1200px;
    margin: 0 auto;
}

footer p {
    margin-bottom: 10px;
    font-size: 14px;
}

.footer-links {
    list-style-type: none;
    padding: 0;
    margin: 0;
}

.footer-links li {
    display: inline;
    margin: 0 15px;
}

.footer-links li a {
    color: #f5a425;
    text-decoration: none;
    font-size: 14px;
}

.footer-links li a:hover {
    color: #fcba03;
}
</style>
