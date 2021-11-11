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

<style>
	.container {
  box-shadow: 1px lightgrey;
  padding: 30px;
  
}

.main {
  display: flex;
}

.left-column {
   width: 300px;
  height: 300px;
	margin-top:50px;
	margin-left:80px;	
}
.right-column {
 
  width: 700px;
  height: 300px;  
  margin-top:50px;
	margin-left:80px;	
}

.cart-btn {
  display: inline-block;
  background-color: white;
  border-radius: 6px;
  font-size: 20px;
  color:red;
  text-decoration: none;
  padding: 12px 15px;
  transition: all 0.5s;
}
.cart-btn:hover {
  background-color:rgb(230, 223, 223);
}


nav{
	flex: 1;
	text-align: right;	
}
a{
    text-decoration: none;
}
ul{
    list-style: none;
}

a{
	text-decoration: none;
	color: black;
	border-color: white;
}
.button ul{
	display: inline-block;
	list-style-type: none;
}

.button ul li{
	margin-right: 20px;
	background-color:azure;
	justify-content: center;
	align-items: center;
	width:105px;
	height: 40px;
	font-size:25px;
	box-shadow: 2px 2px 30px rgba(0,0,0,0.1);
	display: inline-flex;
	margin-top:-8px;
}





.button {
	background-color:black;
	overflow: hidden;
  }

</style>
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
					<img src="${prod.prodImgSrc}.png"  alt="${prod.prodName}" width=auto height=250 px>
				</div>
				<div class="right-column">
					
					<b style="font-size:30px"> ${prod.prodName}</b><br>  
					<i style="font-size:20px"> ${prod.prodDesc}</i><br>
					<b style="font-size:30px">${prod.prodPrice}</b><br> 
					<a href="addToCart?prodId=${prod.prodId}" class="cart-btn">Add to cart</a>
					
				</div>
			</div>
		</c:forEach>
	</div>
</body>
</html>
