<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login - Defense Aspirants Guide</title>
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
</head>

<body>

	<c:if test="${param.error != null}">
		<i style="color: red; display: block; text-align: center;">Invalid
			Username or password.</i>
	</c:if>

	<c:if test="${param.logout != null}">
		<i style="color: blue; display: block; text-align: center;">You
			have been logged out.</i>
	</c:if>

	<% String errorMessage = (String) session.getAttribute("errorMessage"); %>
		<% if (errorMessage != null) { %>
		    <div style="color: red; font-size: 16px; text-align: center; margin-bottom: 5px;">
        		<%= errorMessage %>
    		</div>
    		<% session.removeAttribute("errorMessage"); %>
	<% } %>

	<header>
		<h1>Login to Defense Aspirants Guide</h1>
		<nav>
			<a href="<%=request.getContextPath()%>/register">Register</a> | 
				<!--  <a href="<%=request.getContextPath()%>/index">Index</a> | -->
				<a href="<%=request.getContextPath()%>/home">Home</a>
			<div class="logo">
				<img src= "<%=request.getContextPath()%>/Images/airforcelogo.jpg" alt="Army Logo"
					height="150px" width="200px"> <img
					src= "<%=request.getContextPath()%>/Images/eastNaval.jpg" alt="Navy Logo"
					height="150px" width="200px"> <img
					src= "<%=request.getContextPath()%>/Images/airBgPreview.jpg" alt="Air Force Logo"
					height="150px" width="200px">
			</div>
		</nav>
	</header>

	<section>
		<div class="form-container">
			<h2 align="center">Login to Your Defence Account</h2>
			<form action="process-defence" method="post">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> 
					<label for="email">Email:</label> 
					<input type="email" id="email" name="email" required> 
					<label for="password">Password:</label> 
					<input type="password" id="password" name="password" required>

				<button type="submit">Login</button>
			</form>
		</div>
	</section>

	<div class="img">
		<div class="one">
			<img src="<%=request.getContextPath()%>/Images/factCheck.jpg" alt="anc"
				height="250px" width="420px">
		</div>
		<div class="one">
			<img
				src="<%=request.getContextPath()%>/Images/modiNavy.jpg"
				alt="hb" height="250px" width="420px">
		</div>
		<div class="one">
			<img src="<%=request.getContextPath()%>/Images/airForceJobs.jpg" alt="kjb"
				height="250px" width="420px">
		</div>
	</div>

</body>
</html>
