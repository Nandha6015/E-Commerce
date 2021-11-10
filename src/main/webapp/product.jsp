<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>product</title>
<link rel="stylesheet" href="product.css" />
<script>
	
</script>
</head>
<body>
	
	<nav class="button">
		<ul>
			<li><a href="products" class="head">Product</a></li>
			<li><a href="cart" class="head">Cart</a></li>
			<li><a href="orders" class="head">Orders</a></li>
			<li><a href="profile" class="head">${user.userName}</a></li>
			<li><a href="index.jsp" class="head">Logout</a></li>
		</ul>
	</nav>
	
	<div class="container">
		<c:forEach items="${product}" var="prod">

			<div class="main">
				<div class="left-column">
					<img src="${prod.prodImgSrc}" alt="${prod.prodName}" width=400px height=200px>

				</div>
				<div class="right-column">
					<b style="font-size:30px"> ${prod.prodName}</b><br>  
					<i style="font-size:20px"> ${prod.prodDesc}</i><br>
					<b style="font-size:30px">${prod.prodPrice}</b><br> 
					<a href="cart.html" class="cart-btn">Add to cart</a>
					
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
