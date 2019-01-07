<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>

<div class="container" style="background-color:lightgray;">
<center><h3>COMPLETE REGISTERTAION PROCESS</h3></center>
</div>
<br/>
<div class="container" style="background-color:lightgray;">
<br/>
<form action="/action_page.php" class="form-inline">
  
  <div class="form-group">
  
    <label for="userid">USERID:</label><br/>
    <input type="text" class="form-control" id="userid" style="width:500px">
  </div>
&emsp;&emsp;&emsp;&emsp;&emsp;
  <div class="form-group">
    <label for="name">NAME:</label><br/>
    <input type="text" class="form-control" id="name" style="width:500px">
  </div>
  <br/><br/>
  <div class="form-group">
    <label for="pwd">PASSWORD:</label><br/>
    <input type="password" class="form-control" id="pwd" style="width:500px">
  </div>
  <br/><br/>
    <div class="form-group">
    <label for="pwd">Address:</label><br/>
    <textarea class="form-control" id="address" style="width:1100px"></textarea>
  </div>
  <br/><br/>
    <div class="form-group">
    <label for="pwd">Email:</label><br/>
    <input type="text" class="form-control" id="email" style="width:350px">
  </div>
  &emsp;&emsp;
    <div class="form-group">
    <label for="pwd">Age:</label><br/>
    <input type="text" class="form-control" id="age" style="width:350px">
  </div>
  &emsp;&emsp;
    <div class="form-group">
    <label for="pwd">City:</label><br/>
    <input type="text" class="form-control" id="city" style="width:350px">
  </div>
  <br/><br/>
  <div class="form-group">
    <label for="pwd">Phone Number:</label><br/>
    <input type="text" class="form-control" id="pno" style="width:1100px">
  </div>
  <br/><br/>
  <div class="form-group">
    <label for="pwd">Gender:</label><br/>
    <input type="radio" class="form-control" id="gender">&nbsp;<b>Male</b> &emsp;
    <input type="radio" class="form-control" id="gender">&nbsp;<b>Female</b>
  </div>
  
 <center> <button type="submit" class="btn btn-info">Submit</button></center>
 <p>&nbsp;</p>
</form>

</div>
<br/><br/>
<%@ include file="Footer.jsp" %>
</body>
</html>