<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
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
			
				<form action="${pageContext.request.contextPath}/userCreate"
					method="post">
					<div class="form-group">
						<label for="fullname">Fullname</label> <input type="text"
							class="form-control" id="fullname" placeholder="Enter Fullname"
							name="fullname">
					</div>
					
					<div class="form-group">
						<label for="email">Email address</label> <input type="email"
							class="form-control" id="email" placeholder="Enter Email Address"
							name="email" required/>
					</div>

					<div class="form-group">
						<label for="country">Country</label> <select
							class="form-control" id="country" name="country">
							<option>Select Country</option>
							<option value="Nepal">Nepal</option>
							<option value="China">China</option>
							<option value="India">India</option>
						</select>
					</div>
					<div class="form-group">
						<label for="cou">Gender</label> <select
							class="form-control" id="gender" name="gender">
							<option>Choose</option>
							<option value="Male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select>
					</div>
					<div class="form-group">
						<label for="username">Username</label> <input type="text"
							class="form-control" id="username" placeholder="Enter Username"
							name="username" required/>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" id="password" placeholder="Enter Password"
							name="password" required/>
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>