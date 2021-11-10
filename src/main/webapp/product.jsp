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
	<div class="container">
		<c:forEach items="${product}" var="prod">

			<div class="main">
				<div class="left-column">
					<img src="${prod.prodImgSrc}" alt="${prod.prodName}" width=400px height=200px>

				</div>
				<div class="right-column">
					${prod.prodName} ${prod.prodDesc} ${prod.prodPrice} <a
						href="cart.html" class="cart-btn">Add to cart</a>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
