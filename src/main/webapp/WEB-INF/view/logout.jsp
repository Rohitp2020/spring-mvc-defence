<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Logout Confirmation</title>
    <script>
        function confirmLogout(event) {
            event.preventDefault(); // Prevent form submission
            let confirmation = confirm("Do you want to logout?");
            if (confirmation) {
                document.getElementById("logoutForm").submit(); // Submit form if "Yes"
            }
        }
    </script>
</head>
<body>
    <div style="text-align: center; margin-top: 50px;">
        <form:form id="logoutForm" action="logout" method="POST">
            <input type="submit" value="logout" onclick="confirmLogout(event)">
        </form:form>
    </div>
</body>
</html>
