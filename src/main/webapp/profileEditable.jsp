<html>
<head>
<link rel="stylesheet" href="profile.css">
</head>
<form action="updateProfile">
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

</html>