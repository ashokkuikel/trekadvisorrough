<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

				<form action="${pageContext.request.contextPath}/userCreate" method="post" commandName="offer">
					<div class="form-group">
						<label for="post_title">Fullname</label>
						<input type="text" class="form-control"
							 placeholder="Enter Title" name="post_title" />
					</div>
					post_id, post_title, post_description, post_category, post_price, post_image
					<div class="form-group">
						<label for="post_description">Post Description</label>
						<input type="textarea" class="form-control"
							 placeholder="Enter Description" name="post_description"
							/>
					</div>

					<div class="form-group">
						<label for="post_price">Price</label>
						<input type="text" class="form-control" 
							placeholder="Enter Username" name="post_price"/>
					</div>
					<div class="form-group">
						<label for="password">Password</label>
						<input type="password" class="form-control" 
							placeholder="Enter Password" name="password" required />
						<errors path="password"></errors>
					</div>
					
					
					<button type="submit" class="btn btn-default">Submit</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>