<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<c:if test="${param.error != null}">
		<i style="color:red">Invalid login or password.</i>
	</c:if>
	
	<c:if test="${param.logout != null}">
		<i style="color:blue">You have been logged out.</i>
	</c:if>
	
	<h1>My Custom login page</h1>
	<form:form action="helloWorld" method="POST">
		Username : <input type="text" name="username">
		</br>
		Password : <input type="password" name="password">
		</br>
		<input type="submit" value="Login">
	</form:form>
</body>
</html>