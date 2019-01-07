<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>



 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
.navbar-default
{
background-color: rgb(85, 85, 85);
color: whitesmoke;
}
.navbar-default .navbar-nav > li > a
{
color: whitesmoke;
}
.navbar-default .navbar-nav > li.dropdown:hover > a,
.navbar-default .navbar-nav > li.dropdown:hover > a:hover,
.navbar-default .navbar-nav > li.dropdown:hover > a:focus {
    background-color: rgb(231, 231, 231);
    color: rgb(85, 85, 85);;
}
li.dropdown:hover > .dropdown-menu {
    display: block;
    background-color: lime;
}


</style>
</head>
<body>
<nav class="navbar navbar-default" role="navigation" style="background-color: rgb(85, 85, 85);color:whitesmoke">
<div class="container-fluid">
<div class="navbar-header">
<a class="navbar-brand" href="#">Brand</a>
</div>
<div class="collapse navbar-collapse">
<ul class="nav navbar-nav">
<li class="active"><a href="index" style="color: whitesmoke;">Home</a></li>
<li><a href="#" style="color: whitesmoke;">About Us</a></li>
<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: whitesmoke;">Categorys <b class="caret"></b></a>
          <ul class="dropdown-menu">
          <c:forEach var="c" items="${clist}">
          <li><a href="#">${c.cname}</a></li>
          </c:forEach>
            
            
          </ul>
        </li>
 <li><a href="ProductDetails" style="color: whitesmoke;">Manage Products</a></li>
<li><a href="Category" style="color: whitesmoke;">Manage Categories</a></li>
<li><a href="suppliers" style="color: whitesmoke;">Supplier Details</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a href="LoginPage" style="color: whitesmoke;"><span class="glyphicon glyphicon-user" style="color: whitesmoke;"></span> Login</a></li>
<li><a href="Registeration" style="color: whitesmoke;"><span class="glyphicon glyphicon-lock" style="color: whitesmoke;"></span> SignUp</a></li>
</ul>
</div>
</div>
</nav>
</body>
</html>