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
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"  src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js">
	</script>
	<script type="text/javascript"  src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js">
	</script>
	<script type="text/javascript" class="init">
	
$(document).ready(function() {
	$('#mytable').DataTable();
} );

	</script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/sidebar.css">
	<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" >
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
 .nav-side-menu
  {
  min-height :100vh !important;
  }
  </style>
</head>
<body>
	<div class="container-fluid">
    <div class="row">
			  <!-- Sidebar -->
      <div class="nav-side-menu col-sm-4" >
        <div class="brand"><h5>MyTrekAdvisor</h5></div>
        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
        <div class="text-center">
          <br/>
          <i class="fa fa-user-circle fa-5x" aria-hidden="true"></i>
          <h6>Ashok kuikel</h6>
          <h6>@dreamspark71</h6>
          <a href="#"><i class="fa fa-power-off fa-2x" aria-hidden="true" style="color:red"></i></a>
        </div>
        <div class="menu-list">

          <ul id="menu-content" class="menu-content collapse out">
            <li>
              <a href="#">
                <i class="fa fa-dashboard fa-lg"></i> Dashboard
              </a>
            </li>

            <li  data-toggle="collapse" data-target="#products" class="collapsed active">
              <a href="#"><i class="fa fa-thumb-tack" aria-hidden="true"></i>Posts<span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="products">
              <li class="active"><a href="Allpost">All posts</a></li>
              <li><a href="New">Add post</a></li>
              <li><a href="#">Category</a></li>
              <li><a href="#">Tabs & Accordions</a></li>
            </ul>

            <li data-toggle="collapse" data-target="#service" class="collapsed">
              <a href="#"><i class="fa fa-file-o" aria-hidden="true"></i>Pages<span class="arrow"></span></a>
            </li>  
            <ul class="sub-menu collapse" id="service">
              <li>All pages</li>
              <li>Add Page</li>
              <li>Edit page</li>
            </ul>


            <li data-toggle="collapse" data-target="#new" class="collapsed">
              <a href="#"><i class="fa fa-user-plus" aria-hidden="true"></i>User<span class="arrow"></span></a>
            </li>
            <ul class="sub-menu collapse" id="new">
              <li>All Users</li>
              <li>Add User</li>

            </ul>

            <li>
              <a href="#">
                <i class="fa fa-wrench" aria-hidden="true"></i> Profile
              </a>
            </li>

          </ul>
        </div>

      </div>
      <!-- End Sidebar -->
			<!-- <script
				src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
			<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script> -->
					<div class="col-md-9">
						<h4>All users</h4>
						<div class="table-responsive">
						<div class="fw-container">
		<div class="fw-body">
			<div class="content">
				<table id="mytable" class="table table-striped table-bordered"  width="100%">
					<thead>
									<th width="30"><input type="checkbox" id="checkall" /></th>
									<th width="50">ID</th>
									<th width="120">Full name</th>
									<th width="168">Email address</th>
									<th>Uername</th>
									<th>Action</th>
								</thead>
								<tbody>

									<c:forEach var="row" items="${users}">
									<tr>
									<td><input type="checkbox" class="checkthis" /></td>
										<td>${row.id}</td>
										<td>${row.fullname}</td>
										<td>${row.email}</td>
										<td>${row.username}</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
											<td>
										<p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
												</tr>
								</c:forEach>
								</tbody>

				</table>
			</div>
		</div>
	</div>
						<%-- 	<table id="mytable" class="table table-bordred table-striped">
								<thead>
									<th width="30"><input type="checkbox" id="checkall" /></th>
									<th width="50">ID</th>
									<th width="120">Full name</th>
									<th width="168">Email address</th>
									<th>Uername</th>
									<th>Action</th>
								</thead>
								<tbody>

									<c:forEach var="row" items="${users}">
									<tr>
									<td><input type="checkbox" class="checkthis" /></td>
										<td>${row.id}</td>
										<td>${row.fullname}</td>
										<td>${row.email}</td>
										<td>${row.username}</td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Edit">
												<button class="btn btn-primary btn-xs" data-title="Edit"
													data-toggle="modal" data-target="#edit">
													<span class="glyphicon glyphicon-pencil"></span>
												</button>
											</p></td>
										<td><p data-placement="top" data-toggle="tooltip"
												title="Delete">
												<button class="btn btn-danger btn-xs" data-title="Delete"
													data-toggle="modal" data-target="#delete">
													<span class="glyphicon glyphicon-trash"></span>
												</button>
											</p></td>
												</tr>
								</c:forEach>
								</tbody>

							</table> --%>

							<div class="clearfix"></div>
							<ul class="pagination pull-right">
								<li class="disabled"><a href="#"><span
										class="glyphicon glyphicon-chevron-left"></span></a></li>
								<li class="active"><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#"><span
										class="glyphicon glyphicon-chevron-right"></span></a></li>
							</ul>

						</div>

					</div>
				</div>
			</div>


			<div class="modal fade" id="edit" tabindex="-1" role="dialog"
				aria-labelledby="edit" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							</button>
							<h4 class="modal-title custom_align" id="Heading">Edit Your
								Detail</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<input class="form-control " type="text" placeholder="Mohsin">
							</div>
							<div class="form-group">

								<input class="form-control " type="text" placeholder="Irshad">
							</div>
							<div class="form-group">
								<textarea rows="2" class="form-control"
									placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>


							</div>
						</div>
						<div class="modal-footer ">
							<button type="button" class="btn btn-warning btn-lg"
								style="width: 100%;">
								<span class="glyphicon glyphicon-ok-sign"></span> Update
							</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
			</div>
			<div class="modal fade" id="delete" tabindex="-1" role="dialog"
				aria-labelledby="edit" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">
								<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
							</button>
							<h4 class="modal-title custom_align" id="Heading">Delete
								this entry</h4>
						</div>
						<div class="modal-body">

							<div class="alert alert-danger">
								<span class="glyphicon glyphicon-warning-sign"></span> Are you
								sure you want to delete this Record?
							</div>

						</div>
						<div class="modal-footer ">
							<button type="button" class="btn btn-success">
								<span class="glyphicon glyphicon-ok-sign"></span> Yes
							</button>
							<button type="button" class="btn btn-default"
								data-dismiss="modal">
								<span class="glyphicon glyphicon-remove"></span> No
							</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal-dialog -->
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