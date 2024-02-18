<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="US-ASCII">
<title>KA Inventory System | Products</title>
</head>
<body>
	<div class="container">
		<h1>KA Products</h1>
		
		<c:if test="${empty products}">
		<p style="color: red;">No product(s) found.</p>
		</c:if>
		
		<c:if test="${not empty products}">
		<table>
			<thead>
				<tr>
					<th>#</th>
					<th>Name</th>
					<th>Description</th>
					<th>Category</th>
					<th>Price Per Unit (MYR)</th>
					<th>Quantity</th>
					<th>#Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="product" items="${products}" varStatus="row">
				<tr>
					<td>${row.index+1}</td>
					<td><a href="/products/${product.id}">${product.name}</a></td>
					<td>${product.description}</td>
					<td>${product.category}</td>
					<td>${product.price}</td>
					<td>${product.quantity}</td>
					<td><a href="/products/${product.id}/delete">Delete</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		</c:if>
	</div>
	
	<div class="container">
		<p><a href="/products/new" style="color: red:"><button>Create New Product</button></a></p>
	</div>
	
	<footer style="margin-top: 30px;">&copy; 2024. Made with love in Penang.</footer>
</body>
</html>