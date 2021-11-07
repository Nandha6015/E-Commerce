<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
</head>
<body>
<head>
<link rel="stylesheet" href="profile.css">
</head>
<table>

	<tr>
		<td><label style="color: black;">UserName:</label></td>
		<td><p>${user.userName}</p></td>
	</tr>
	<tr>
		<td><label style="color: black;">UserEmail:</label></td>
		<td><p>${user.userEmail}</p></td>
	<tr>
		<td><label style="color: black;">UserPhoneno:</label></td>
		<td><p>${user.userPhoneNumber}</p></td>
	</tr>
	<tr>
		<td><label for="Address" style="color: black;">UserAddress:</label></td>
		<td><p>${user.userAddress}</p></td>
	</tr>
	<tr>
		<td><label style="color: black;">Password:</label></td>
		<td><p>${user.userPassword}</p></td>
	</tr>
	<tr>
		<td><a href="home"><input type="submit" id="save1"
				value="Back"></a></td>
		<td><a href="profileEditable.jsp"><input
				style="margin-left: 300px;" type="submit" id="save1" value="Edit"></a></td>

	</tr>
</table>
</body>
</html>
