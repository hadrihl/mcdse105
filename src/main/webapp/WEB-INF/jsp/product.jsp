<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KA Inventory System | New Product</title>
</head>
<body>
	<div class="container">
	<h1>Product: ${product.name}</h1>
	
	<form method="post" action="/products/${product.id}/update" modelattribute="product">
	
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="name">Name</label>
			<input type="text" id="name" name="name" value="${product.name}" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="description">Description</label>
			<input type="text" id="description" name="description" value="${product.description}" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="category">Category</label>
			<input type="text" id="category" name="category" value="${product.category}" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="price">Price</label>
			<input type="number" id="price" name="price" value="${product.price}" />
		</div>
		
		<div class="form-group" style="margin-top: 10px; margin-bottom: 10px;">
			<label for="quantity">Quantity</label>
			<input type="number" id="quantity" name="quantity" value="${product.quantity}" />
		</div>
		
		<div class="form-group" style="margin-top: 20px; margin-bottom: 10px;">
			<button><a href="/products">Cancel</a></button>
			<button type="submit">Update</button>
		</div>
		
		<c:if test="${not empty msg}">
		<p style="color: green;">${msg}</p>
		</c:if>
	</form>
	</div>
	
	<footer style="margin-top: 30px;"><a href="/">KA Inventory System</a> &copy; 2024. Made with love in Penang.</footer>
</body>
</html>