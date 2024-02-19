<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KA Inventory System | New Product</title>
</head>
<body>
	<div class="container">
	<h1>Add New Product</h1>
	
	<form method="post" action="/products/new" modelattribute="product">
	
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="name">Name</label>
			<input type="text" id="name" name="name" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="description">Description</label>
			<input type="text" id="description" name="description" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="category">Category</label>
			<input type="text" id="category" name="category" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="price">Price</label>
			<input type="number" id="price" name="price" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="quantity">Quantity</label>
			<input type="number" id="quantity" name="quantity" />
		</div>
		
		<div class="form-group" style="margin-top: 20px; margin-bottom: 10px;">
			<button><a href="/products">Cancel</a></button>
			<button type="submit">Create</button>
		</div>
		
		<c:if test="${not empty errmsg}">
		<p style="color: red;">${errmsg}</p>
		</c:if>
		
	</form>
	</div>
	
	<footer style="margin-top: 30px;"><a href="/">KA Inventory System</a> &copy; 2024. Made with love in Penang.</footer>
</body>
</html>