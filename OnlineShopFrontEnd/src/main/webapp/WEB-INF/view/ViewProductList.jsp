<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br><br>
	<table class="table table-striped table-bordered dt-responsive nowrap">

		<thead>
			<tr>

				<th>ID</th>
				<th>ProdutName</th>
				<th>Price</th>

				<th>Action</th>
				<th>Image</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${plist}" var="p">
				<tr>
					<td>${p.pid}</td>
					<td>${p.pname}</td>
					<td>${p.pcost}</td>
					<td><a class="fa fa-pencil-square-o" href="./product_edit?id=${p.pid}">
							</a> 
							<a class="fa fa-trash-o"	href="./product_delete?id=${p.pid}"></a></td>
					<td><img src="${pageContext.request.contextPath}/resources/images/${p.p_image}"
						class="img-rounded" alt="" width="75px" height="50px" /></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html>
















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<br><br>
	<table class="table table-striped table-bordered dt-responsive nowrap">

		<thead>
			<tr>

				<th>ID</th>
				<th>ProdutName</th>
				<th>Price</th>

				<th>Action</th>
				<th>Image</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${slist}" var="p">
				<tr>
					<td>${p.pid}</td>
					<td>${p.pname}</td>
					<td>${p.pcost}</td>
					<td><a class="fa fa-pencil-square-o" href="./product_edit?id=${p.pid}">
							</a> 
							<a class="fa fa-trash-o"	href="./product_delete?id=${p.pid}"></a></td>
					<td></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>
</body>
</html> --%>