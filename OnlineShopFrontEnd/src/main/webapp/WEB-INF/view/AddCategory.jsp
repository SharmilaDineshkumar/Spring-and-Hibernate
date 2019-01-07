<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Category</title>
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
<center><h3>ADD PRODUCTS</h3></center>
<hr>
<div class="container">
<center>
<form action="addCategory" class="form-horizontal" method="post">

  <div class="form-group">
  
    <label for="cid" class="control-label col-sm-5">Category Id</label>
    <div class="col-sm-4"> 
      <input type="text" class="form-control" id="cid" name="cid">
      </div>
  </div>
  
    <div class="form-group">
  
    <label for="cname" class="control-label col-sm-5">Category Name:</label>
    <div class="col-sm-4"> 
    <input type="text" class="form-control" id="cname" name="cname">
    </div>
  </div>
  
   <center> <button type="submit" class="btn btn-info">Submit</button></center>
   
  </form></center>
  </div>
  
  <br/>
<br/>
<%@ include file="Footer.jsp" %>
</body>
</html>