<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript"src='js/bootstrap.min.js'>
</script>
</head>
<body>
<div class="container">
<form action="frmsubmit.jsp"method="post">
<div class="row">
<div class="col-md-6">
username:
</div>
<div class="col-md-6">
<input type="text" name="txtunm"/>
<br>
</div>
</div>
<div class="row">
<div class="col-md-6">
password:
</div>
<div class="col-md-6">
<input type="password" name="txtpwd"/>
<br>
</div>
</div>
<div class="row">
<div class="col-md-3">
</div>
<div class="col-md-3">
<input type="submit" value="login" class="btn btn-success"/>
</div>
<div class="col--md-3">
</div>
<div class="col-md-3">
<a href='Registeremp.jsp' class="btn btn-primary">register emp</a>
</div>
</div>
</form>
</div>
</body>
</html>