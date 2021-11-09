<!DOCTYPE html>
<html>
<head>
<title>Flipkart</title>
<link rel="stylesheet" href="style.css">
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
		<div class="main">
		         
			<div class="w3-content w3-display-container">      
			  <img class="images" src="18.png" style="width:100%">
			  <img class="images" src="21.png" style="width:100%">
			  <img class="images" src="21.png" style="width:100%">
			  <img class="images" src="18.png" style="width:100%">
	</div>
	
	<script>
		var myIndex = 0;
	   slideImage();
		function slideImage() {
		  var i;
		  var x = document.getElementsByClassName("images");
		  for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";  
		  }
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(slideImage, 1500); // Change image every 2 seconds
		}
		</script>
</body>
</html>