<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>MYTREKADVISOR | Homepage</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js">
	</script>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js">
	</script>
<script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#mytable').DataTable();
} );

	</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/sidebar.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<script>
$(document).ready(function(){
	$("#mytable #checkall").click(function () {
	        if ($("#mytable #checkall").is(':checked')) {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", true);
	            });

	        } else {
	            $("#mytable input[type=checkbox]").each(function () {
	                $(this).prop("checked", false);
	            });
	        }
	    });
	    
	    $("[data-toggle=tooltip]").tooltip();
	});
</script>
<style>
.nav-side-menu {
	min-height: 100vh !important;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<!-- Sidebar -->
			<div class="nav-side-menu col-sm-4">
				<div class="brand">
					<h5>MyTrekAdvisor</h5>
				</div>
				<i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse"
					data-target="#menu-content"></i>
				<div class="text-center">
					<br /> <i class="fa fa-user-circle fa-5x" aria-hidden="true"></i>
					<h6>Ashok kuikel</h6>
					<h6>@dreamspark71</h6>
					<a href="#"><i class="fa fa-power-off fa-2x" aria-hidden="true"
						style="color: red"></i></a>
				</div>
				<div class="menu-list">

					<ul id="menu-content" class="menu-content collapse out">
						<li><a href="View"> <i class="fa fa-dashboard fa-lg"></i>
								Dashboard
						</a></li>

						<li data-toggle="collapse" data-target="#products"
							class="collapsed active"><a href="#"><i
								class="fa fa-thumb-tack" aria-hidden="true"></i>Posts<span
								class="arrow"></span></a></li>
						<ul class="sub-menu collapse" id="products">
							<li class="active"><a href="Allpost">All posts</a></li>
							<li><a href="New">Add post</a></li>
							<li><a href="#">Category</a></li>
						</ul>

						<li data-toggle="collapse" data-target="#service"
							class="collapsed"><a href="#"><i class="fa fa-file-o"
								aria-hidden="true"></i>Pages<span class="arrow"></span></a></li>
						<ul class="sub-menu collapse" id="service">
							<li>All pages</li>
							<li>Add Page</li>
							<li>Edit page</li>
						</ul>


						<li data-toggle="collapse" data-target="#new" class="collapsed">
							<a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>User<span
								class="arrow"></span></a>
						</li>
						<ul class="sub-menu collapse" id="new">
							<li><a href="View">All Users</a></li>
							<li><a href="Signup">Add user</a></li>

						</ul>

						<li><a href="#"> <i class="fa fa-wrench"
								aria-hidden="true"></i> Profile
						</a></li>

					</ul>
				</div>
			</div>
			<!-- End Sidebar -->
			<!-- <script
				src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script> -->
			<div class="col-md-9">
				<br />
				<h3 class="text-center">Add Post</h3>
				<div class="col-sm-8">

					<form action="${pageContext.request.contextPath}/userEdit"
						method="post">

						<div class="form-group">
							<input type="hidden"
								class="form-control" value="${user.id}" name="id" readonly>
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
	</div>
	</div>
	</div>
	</div>
	<div class="panel panel-inverse">
		<div class="panel-body text-center">Copyright &copy; 2017
			MYTREKADVISOR.All right Reserved</div>
	</div>
</body>
</html>