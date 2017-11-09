<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">






</style>
</head>
<body>
Offer Create Page
<form action="${pageContext.request.contextPath}/userCreate"
		method="post">

		<table>
			<tr>
				<td>Name</td>
				<td><input type="text" name="fullname" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Username</td>
				<td><textarea rows="10" cols="10" name="username"></textarea></td>
			</tr>
			<tr>
			<tr>
				<td>Password</td>
				<td><textarea rows="10" cols="10" name="password"></textarea></td>
			</tr>
			<tr>
				<td><input type="submit" value="Create" /></td>
			</tr>
		</table>

	</form>

</body>
</html>