<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>Registration</title>
</head>
<body>
	<h2>Register</h2>
	<form:form action="/register" modelatrribute="user" method="post">
		<label for="username">Username</label><br>
		<input type="text" id="username" name="username" required /><br>
		
		<label for="email">Email</label><br>
		<input type="email" id="email" name="email" required /><br>
		
		<label for="password">Password</label><br>
		<input type="password" id="password" name="password" required /><br>
		
		<label for="cpassword">Confirm password</label><br>
		<input type="password" id="cpassword" name="cpassword" required /><br>
		
		<button type="submit" style="margin-top: 20px;">Register</button>
		
		<c:if test="${not empty errmsg}">
			<p style="color: red;">${errmsg} Please try again.</p>
		</c:if>
	</form:form>
	
	<footer style="margin-top: 20px;"><a href="/">KA Inventory System</a> &copy; 2024. Made with love in Penang.</footer>
</body>
</html>