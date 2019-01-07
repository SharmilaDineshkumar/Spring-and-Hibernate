<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category List</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="Header.jsp" %>
<br/>
<ul>
<li style="display: inline;color:purple;font-weight: bold;"><a href="categorylist">GATEGORYLIST</a></li>&emsp;&emsp;
<li style="display: inline;color:purple;font-weight: bold;"><a href="#">PRODUCTLIST</a></li>&emsp;&emsp;
<li style="display: inline;color:purple;font-weight: bold;"><a href="#">VIEWALLSHIPDETAILS</a></li>
</ul>
<br/>
<hr>
<center>
<h4>List of Categories</h4>
</center>
<br/>
<div class="container">
<center>
<table class="table table-hover text-centered">
<thead>
<tr>
<th>Category Id</th>
<th>Category Name</th>
</tr>
</thead>
          <c:forEach var="c" items="${clist}">
          <tr>
          <td>${c.cid}</td>
          <td>${c.cname}</td>
          </tr>
          </c:forEach>


</table>
</center>
</div>
<br/>
<%@include file="Footer.jsp" %>
</body>
</html>

