<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Suppliers List</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<br/>
<a href="supplierlist" style="display: inline;color:purple;font-weight: bold;">SUPPLIER LIST</a>
<br/>
<center><h4>Suppliers List</h4></center>

<hr>
<br/>
<div class="container">
<center>
<table class="table table-hover text-centered">
<thead>
<tr>
<th>Supplier Id</th>
<th>Supplier Name</th>
</tr>
</thead>
          <c:forEach var="s" items="${slist}">
          <tr>
          <td>${s.sid}</td>
          <td>${s.sname}</td>
          </tr>
          </c:forEach>


</table>
</center>
</div>
<br/>
<%@include file="Footer.jsp" %>
</body>
</html>