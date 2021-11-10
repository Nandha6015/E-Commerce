<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Orders</title>
<link rel="stylesheet" href="cart.css" />
<script>
	
</script>
</head>
<body>
	<div class="container">
		<c:forEach items="${order}" var="ord">
			<div class="main">
				<div class="left-column">
					<img id="img" src="${ord.prodImgSrc}" alt="${ord.prodName}">
				</div>
				<div class="right-column">
					${ord.prodName} ${ord.prodNos}
					<p class="prod-ttl-price">${ord.prodTotalPrice}</p>
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
