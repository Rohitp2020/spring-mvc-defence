<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Defense Aspirants Guide</title>
<!-- <link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">  -->
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	color: #333;
	margin: 0;
	padding: 0;
}

header {
	background-color: #004d99;
	color: white;
	text-align: center;
	padding: 20px;
}

h1 {
	margin: 0;
}

nav a {
	color: white;
	margin: 0 10px;
	text-decoration: none;
}

nav a:hover {
	text-decoration: underline;
}

section {
	padding: 20px;
	max-width: 800px;
	margin: auto;
}

.form-container {
	background-color: white;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin: 10px 0 5px;
}

input, select, button {
	width: calc(100% - 5px);
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

button {
	background-color: #004d99;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: #003366;
}

.img {
	display: flex;
	justify-content: space-around;
	padding-top: 5px;
}

.one {
	border-radius: 10%;
	box-shadow: 5px 5px 10px rgba(0, 0, 0, 0.1);
}

.logo {
	text-align: center;
	padding-top: 20px;
}
</style>
<script>
        function confirmLogout(event) {
            event.preventDefault(); // Prevent form submission
            let confirmation = confirm("Do you want to logout?");
            if (confirmation) {
                document.getElementById("logoutForm").submit(); // Submit form if "Yes"
            }
        }
        
        function autoLogout() {
        	event.preventDefault();
        	document.getElementById("logoutForm").submit();
        }
</script>
</head>
<body>

    <header>
        <h1>Defense Aspirants Guide</h1>
        <p>Find out which entry you are eligible for in the Indian Army, Air Force, or Navy.</p>
        <nav>
            <a href="#" onclick="confirmLogout(event)">Logout</a> | 
            <a href="<%= request.getContextPath() %>/register">Register</a>
            
            <!-- Hidden Logout Form -->
	        <form:form id="logoutForm" action="logout" method="POST" style="display: none;">
	            <input type="submit">
	        </form:form>
        </nav>
    </header>

    <section>
        <div class="form-container">
            <h2>Check Eligibility</h2>
            <form id="eligibilityForm" action="${pageContext.request.contextPath}/eligible" method="POST">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                <label for="age">Your Age:</label>
                <input type="number" id="age" name="age" required>

                <label for="education">Your Education Level:</label>
                <select id="education" name="education" required>
                    <option value="">Select Education Level</option>
                    <option value="10th">10th</option>
                    <option value="12th">12th</option>
                    <option value="Graduate">Graduate</option>
                    <option value="Postgraduate">Postgraduate</option>
                </select>

                <label for="branch">Preferred Branch:</label>
                <select id="branch" name="branch">
                    <option value="Army">Army</option>
                    <option value="AirForce">Air Force</option>
                    <option value="Navy">Navy</option>
                </select>

                <button type="submit">Check Eligibility</button>
            </form>
            <c:if test="${successFlag == 'N'}">
				<script>
        			alert("Oops!! Unable to check eligibility, Please enter right Age.");
    			</script>
			</c:if>
        </div>

        <div id="result" class="result-container" style="display:none;">
            <h3>Eligibility Results</h3>
            <p id="eligibilityMessage"></p>
        </div>
    </section>

   

</body>
</html>
