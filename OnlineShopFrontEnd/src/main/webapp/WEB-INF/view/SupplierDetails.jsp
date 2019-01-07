<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Supplier Details</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<br/>
<a href="supplierlist" style="display: inline;color:purple;font-weight: bold;">SUPPLIER LIST</a>
<br/>
<center><h4>Add Supplier Details</h4></center>

<hr>
<div class="container">
<center>
<form action="addSupplier" class="form-horizontal" method="post">

  <div class="form-group">
  
    <label for="sid" class="control-label col-sm-5">Supplier Id</label>
    <div class="col-sm-4"> 
      <input type="text" class="form-control" id="sid" name="sid">
      </div>
  </div>
  
    <div class="form-group">
  
    <label for="sname" class="control-label col-sm-5">Supplier Name:</label>
    <div class="col-sm-4"> 
    <input type="text" class="form-control" id="sname" name="sname">
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