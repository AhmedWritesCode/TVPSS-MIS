<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" errorPage = "error.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header>
    <div class="header-container">
        <div class="logo">
            <h1>Code & Coffee</h1>
        </div>
        <nav>
            <ul>
                <li><a href="/home.jsp">Home</a></li>
                <li><a href="/about.jsp">About</a></li>
                <li><a href="/contact.jsp">Contact</a></li>
            </ul>
        </nav>
    </div>
</header>

<style>
/* Header Styling */
.header-container {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    background-color: #1f272b;
}

.header-container .logo h1 {
    margin: 0;
    font-size: 24px;
    color: white;
}

nav ul {
    list-style-type: none;
}

nav ul li {
    display: inline;
    margin-right: 20px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-size: 16px;
    text-transform: uppercase;
}

nav ul li a:hover {
    color: #f5a425;
}
</style>
