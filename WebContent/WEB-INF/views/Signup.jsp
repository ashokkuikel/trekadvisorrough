<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/bootstrap.min.css">
<style type="text/css">
input {
	width: 100%;
	clear: both;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-8">

				<sf:form action="${pageContext.request.contextPath}/userCreate" method="post" commandName="offer">
					<div class="form-group">
						<label for="fullname">Fullname</label>
						<sf:input type="text" path="fullname" class="form-control"
							 placeholder="Enter Fullname" name="fullname" />
						<sf:errors path="fullname"></sf:errors>
					</div>
					<div class="form-group">
						<label for="fullname">Email</label>
						<sf:input type="email" path="email" class="form-control"
							 placeholder="Enter Email Address" name="email"
							required />
						<sf:errors path="email"></sf:errors>
					</div>

					<div class="form-group">
					
						<label for="username">Username</label>
						<sf:input type="text" class="form-control" 
							placeholder="Enter Username" name="username" required />
						<sf:errors path="username"></sf:errors>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<sf:input type="password" class="form-control" 
							placeholder="Enter Password" name="password" required />
						<sf:errors path="password"></sf:errors>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</sf:form>
			</div>
		</div>
	</div>
</body>
</html>