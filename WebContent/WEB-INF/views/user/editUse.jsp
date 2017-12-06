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
				<form action="${pageContext.request.contextPath}/userEdit"
					method="post">

					<div class="form-group">
						<label for="id">ID</label> <input type="text" class="form-control"
							value="${user.id}" name="id" readonly>
					</div>
					<div class="form-group">
						<label for="fullname">Fullname</label> <input type="text"
							class="form-control" value="${user.fullname}" name="fullname">
					</div>

					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" value="${user.email}" name="email" required />
					</div>

					<div class="form-group">
						<label for="email">Email address</label> <input type="text"
							class="form-control" value="${user.username}" name="username" />
					</div>

					<div class="form-group">
						<label for="password">Password</label> <input type="text"
							class="form-control" value="${user.password}" name="password"
							required />
					</div>

					<button type="submit" value="update" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>