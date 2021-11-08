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
</head>
<body>
	<div class="container">
		<c:forEach items="${product}" var="prod">
			<tr class="main">
					<td class="left-column">

						<c:out value="{prod.prodImgSrc}" width=400px height=200px/>
						<!-- <img src="d.jfif" alt="Girl in a jacket" width=400px height=200px> -->

					</td>
					<!-- <div class="right-column"> -->

						<td class="right-column"><c:out value="{prod.prodName}" /></td>

						<c:out value="{prod.prodDesc}" />
						

						<c:out value="{prod.prodPrice}" />
						

						<!--<a href="cart.html" class="cart-btn">Add to cart</a>
					 </div> -->
			</tr>
		</c:forEach>
	</div>
</body>
</html>
