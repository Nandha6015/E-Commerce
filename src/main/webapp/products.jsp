<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:forEach items="${product}" var="prod">
	<tr>
	<td><c:out value="${prod.prodName}" /></td>
	<td><c:out value="${prod.prodImgSrc}" /></td>
	<td><c:out value="${prod.prodDesc}" /></td>
	<td><c:out value="${prod.prodPrice}" /></td>
	</tr><br/>
	</c:forEach>
</body>
</html>