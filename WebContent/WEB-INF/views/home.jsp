<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <sql:query var="rs" dataSource="jdbc/trekadvisor">
select id, fullname,email,username from users
</sql:query> --%>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	Welome Home
	<%--  <c:forEach var="row" items="${rs.rows}"> 
     Id ${row.id}<br/> 
   Name ${row.fullname}<br/> 
    Email ${row.email}<br/> 
    Text ${row.username}<br/> 
</c:forEach>  --%>
<%-- 
	<c:forEach var="row" items="${Users}"> 
     Id ${row.id}<br /> 
   Name ${row.fullname}<br /> 
    Email ${row.email}<br /> 
    Text ${row.username}<br />
	</c:forEach> --%>
	
	<a href="${pageContext.request.contextPath}/createuser">Create User</a>
</body>
</html>