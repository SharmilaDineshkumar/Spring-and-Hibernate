<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Details</title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
<%@ include file="Header.jsp" %>
<br/>
<ul>
<li style="display: inline;color:purple;font-weight: bold;"><a href="#">GATEGORYLIST</a></li>&emsp;&emsp;
<li style="display: inline;color:purple;font-weight: bold;"><a href="productlistview">PRODUCTLIST</a></li>&emsp;&emsp;
<li style="display: inline;color:purple;font-weight: bold;"><a href="#">VIEWALLSHIPDETAILS</a></li>
</ul>
<br/>
<hr>
<center><h3>ADD PRODUCTS</h3></center>
<hr>
<div class="container">
<center>
<form action="addProduct" class="form-horizontal" enctype="multipart/form-data" method="POST">

  <div class="form-group">
  
    <label for="pid" class="control-label col-sm-5">Product Id </label>
    <div class="col-sm-4"> 
      <input type="text" class="form-control" name="pid">
      </div>
  </div>
  
    <div class="form-group">
  
    <label for="pname" class="control-label col-sm-5">Product Name </label>
    <div class="col-sm-4"> 
    <input type="text" class="form-control" name="pname">
    </div>
  </div>
  
    <div class="form-group">
  
    <label for="category" class="control-label col-sm-5">Product Category </label>
    <div class="col-sm-4"> 
    	<select class="form-control" name="category">
    	<option></option>
    	<c:forEach var="c" items="${clist}">
          <option value="${c.cid}">${c.cname}</option>
          </c:forEach>
    	</select>
          
            
            
         
    </div>
  </div>
  
    <div class="form-group">
  
    <label for="price" class="control-label col-sm-5">Product Price  </label>
    <div class="col-sm-4"> 
    <input type="text" class="form-control" name="price" >
    </div>
  </div>

  <div class="form-group">
  
    <label for="imageFile" class="control-label col-sm-5">Select your product image</label>
    <div class="col-sm-4"> 
    <!-- <input type="file" name="imageFile"> -->
    <input id="filebutton" name="file" class="input-file" type="file">
    
    </div>
  </div>
  <br/>
 <center> <button type="submit" class="btn btn-info">Submit</button></center>

</form>

</center>
</div>
<br/>
<br/>
<%@ include file="Footer.jsp" %>
</body>
</html>