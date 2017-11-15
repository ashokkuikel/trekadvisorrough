<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.util.*"%>
	<%@ taglib  uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>SATHI | Homepage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="./js/validpassword.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header"
				style="margin-top: 0.05%; margin-left: 10%;">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#hnavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand responsive" href="#"><img
					src="images/sathi-white2.png" width="125" class="img-fluid"></a>
			</div>
			<div class="collapse navbar-collapse" id="hnavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>

				</ul>
			</div>

		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-3">
				<!-- <h1 class="text-center">Dashboard</h1> -->
				<div class="panel panel-default text-center"
					style="max-width: 100%; height: 455px; margin-top: 15%">
					<div class="panel-heading">User Profile</div>
					<div class="panel-body center-block">
						<img src="${pageContext.request.contextPath}/static/img/User.png" width="125px" height="140px"
							class="img-responsive img-round center-block" />
						<h4>Ashok kuikel</h4>
						<h5>@dreamspark71</h5>
						<h5>dreamspark71@gmail.com</h5>
					</div>
				</div>
			</div>
			<center><h4>${message}</center>
			<div class="col-sm-9" style="margin-top: 3%">
				<h3>Registered Users</h3>
				<table class="table table-striped">
					<thead>
						<tr>
							<th width="119"><b>ID</b>
							</td>
							<th width="168"><b>Fullname</b>
							</td>
							<th width="168"><b>Email address</b>
							</td>
							<th width="168"><b>Username</b>
							</td>
							<th width="168"><b>Action</b></th>
						</tr>
					</thead>

					<tbody>

		<c:forEach var="row" items="${users}">
			<tr>
				<td>${row.id}</td>
				<td>${row.fullname}</td>
				<td>${row.email}</td>
				<td>${row.username}</td>

				<td>
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-secondary">
							<a style="color: black;" href="editUser?id=${row.id}">Edit</a>
						</button>

						<button type="button" class="btn btn-danger">
							<a style="color: black;"
								onclick="return confirm('Are you sure you want to delete this user?')"
								href="delete?id=${row.id}">Remove</a>
						</button>


					</div>
				</td>

			</tr>
		</c:forEach>
					</tbody>
				</table>
			</div>

		</div>

		<div class="panel panel-inverse">
			<div class="panel-body text-center">Copyright &copy; 2017
				SATHI.All right Reserved</div>
		</div>
</body>
</html>