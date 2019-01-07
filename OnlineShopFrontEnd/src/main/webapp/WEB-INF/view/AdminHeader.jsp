<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
<li class="active"><a href="index.jsp" >Home</a></li>
<li><a href="#">About Us</a></li>
<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categorys <b class="caret"></b></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
          </ul>
        </li>
 <li><a href="ProductDetails.jsp">Manage Products</a></li>
<li><a href="AddCategory.jsp">Manage Categories</a></li>
</ul>

<ul class="nav navbar-nav navbar-right">
<li><a href="#">Welcome</a></li>
<li><a href="Registeration.jsp"><span class="glyphicon glyphicon-lock"></span> SignUp</a></li>
</ul>
</div>
</div>
</nav>

</body>
</html>