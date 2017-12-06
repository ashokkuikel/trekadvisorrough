<%@include file="include.jsp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<font color="red">${message}</font>
	<form id="loginForm" method="post" action="valid"
		modelAttribute="loginBean">

		<label path="username">Enter your user-name</label> <input
			id="username" name="username" /><br> <label path="username">Please
			enter your password</label> <input type="text" id="password" name="password" /><br>
		<input type="submit" value="Submit" />
	</form>
</body>
</html>