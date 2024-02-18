<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>Login</title>
</head>
<body>
	<h2>Login</h2>
	<form action="/login" method="post">
		<label for="email">email</label>
		<input type="email" id="email" name="email" required /><br>
		
		<label for="password">Password</label>
		<input type="password" id="password" name="password" required /><br><br>
		
		<button type="submit">Login</button>
		
		<c:if test="${not empty errmsg}">
			<p style="color: red;">${errmsg} Please try again.</p>
		</c:if>
	</form>
	
	<footer>&copy; 2024. Made with love in Penang.</footer>
</body>
</html>