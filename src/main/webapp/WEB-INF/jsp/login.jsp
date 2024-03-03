<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
	<form:form action="/login" method="post" modelattribute="user">
		<label for="username">username</label>
		<input type="text" id="username" name="username" required /><br>
		
		<label for="password">Password</label>
		<input type="password" id="password" name="password" required /><br><br>
		
		<button type="submit" style="margin-bottom: 10px;">Login</button>
		
		<c:if test="${not empty errmsg}">
			<p style="color: red;">${errmsg} Please try again.</p>
		</c:if>
	</form:form>
	
	<footer style="margin-top: 20px;"><a href="/">KA Inventory System</a> &copy; 2024. Made with love in Penang.</footer>
</body>
</html>