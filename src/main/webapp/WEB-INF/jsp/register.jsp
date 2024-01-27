<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>Registration</title>
</head>
<body>
	<h2>Register</h2>
	<form action="/register" method="post">
		<label for="username">Username</label><br>
		<input type="text" id="username" name="username" required /><br>
		
		<label for="email">Email</label><br>
		<input type="email" id="email" name="email" required /><br>
		
		<label for="password">Password</label><br>
		<input type="password" id="password" name="password" required /><br>
		
		<label for="cpassword">Confirm password</label><br>
		<input type="password" id="cpassword" name="cpassword" required /><br>
		
		<button type="submit">Register</button>
	</form>
	
	<footer>&copy; 2024. Made with love in Penang.</footer>
</body>
</html>