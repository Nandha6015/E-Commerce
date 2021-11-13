<html>
<head>
<link rel="stylesheet" href="profile.css">
</head>
<style>
	body{
		background-color:azure;
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
  table{
	  background-color:azure;
  }
  tr:hover {background-color:lightblue;}

</style>
<body>
<form action="updateProfile">
	<nav class="button">
		<img style="float: left" src="18.png" width="200px" height="50px" />
		<ul>
			<li><a href="products" class="head">Product</a></li>
			<li><a href="cart" class="head">Cart</a></li>
			<li><a href="orders" class="head">Orders</a></li>
			<li><a href="profile" class="head">${user.userName}</a></li>
			<li><a href="index.jsp" class="head">Logout</a></li>
		</ul>
	</nav>
	<table>

		<tr>
			<td><label style="color: black;">UserName:</label></td>
			<td><p></p> <input type="text" placeholder="Enter User name"
				name="userName" required></td>
		</tr>
		<tr>
			<td><label style="color: black;">UserEmail:</label></td>
			<td><input type="text" name="userEmail"
				placeholder="Enter Email Id" required></td>
		<tr>
			<td><label style="color: black;">UserPhoneno:</label></td>
			<td><input type="text" placeholder="Enter phone no here"
				name="userPhoneNumber" required></td>
		</tr>
		<tr>
			<td><label style="color: black;">Password:</label></td>
			<td><input type="text" placeholder="Enter the new password"
				name="userPassword" required></td>
		</tr>
		<tr>
			<td><label for="Address" style="color: black;">UserAddress:</label></td>
			<td><input style="width: 300px; height: 100px" type="text"
				placeholder="Enter Address" name="userAddress" required></td>
		</tr>
		<tr>
			<td><input style="margin-left: 300px;" type="submit" id="save1"
				value="Save"></td>

		</tr>
	</table>
</form>
</body>
</html>