<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Register - Defense Aspirants Guide</title>
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
        function confirmRegister(event) {
            event.preventDefault(); // Prevent form submission
		    		let confirmation = confirm("You have been Registered, Click Ok to login.");
		            if (confirmation) {
		                //document.getElementById("registerForm").submit().click(); // Submit form if "Yes"
		                document.querySelector("registerForm").submit();
		            	//window.location.href = "/springsecurity/myCustomLogin";
		            	
		            	//document.getElementById("registerForm").submit();
		            	//event.target.form.submit();
		                //document.getElementById("registerForm").submit(); 
		            }
        }
</script>
</head>
<body>

	<header>
		<h1>Register for Defense Aspirants Guide</h1>
		<nav>
			<a href="<%= request.getContextPath() %>/myCustomLogin">Login</a> | <a
				href="<%= request.getContextPath() %>/index">Index</a>
		</nav>
	</header>

	<section>
		<div class="form-container">
			<h2>Create an Account</h2>
			<form id="registerForm"
				action="${pageContext.request.contextPath}/registerUser"
				method="post">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <label for="name">Full Name:</label> <input
					type="text" id="name" name="name" required> <label
					for="email">Email:</label> <input type="email" id="username"
					name="username" required> <label for="password">Password:</label>
				<input type="password" id="password" name="password" required>

				<!--  
                <button type="submit" onclick="confirmRegister(event)">Register</button>
                -->
				<button type="submit">Register</button>
				<!-- 
                
                -->


			</form>
			
			<!-- show success -->
			
			<c:if test="${successFlag == 'Y'}">
				<script >
					alert("Registration Successful! Please Login Now.");
				</script>
			</c:if>

			<c:if test="${successFlag == 'N'}">
				<script>
        			alert("Registration Failed! User may already exists, Please try again.");
    			</script>
			</c:if>

		</div>
	</section>



</body>
</html>
