<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="Header.jsp" %>

<div class="container">
  <center><h4>Login Here</h4></center><br/>
  <form action="/action_page.php">
    <div class="form-group">
      
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd"><br/>
    </div>

    <center><button type="submit" class="btn btn-info">Submit</button></center>
  </form>
</div><br/><br/><br/>

<%@ include file="Footer.jsp" %>
</body>
</html>