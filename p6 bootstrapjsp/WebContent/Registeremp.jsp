<%@page import="java.util.LinkedList"%>
<%@page import="icsd.Emp"%>
<%@page import="icsd.DBHandler"%>
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
<%
DBHandler objDH=new DBHandler();
String strbtn=request.getParameter("btn");
if(strbtn!=null)
{
	if(strbtn.equals("insert"))
	{
	String strempno,strename,streage,streadd,stresal;
	strempno=request.getParameter("txtempno");
	strename=request.getParameter("txtename");
	streage=request.getParameter("txteage");
	streadd=request.getParameter("txteadd");
	stresal=request.getParameter("txtesal");
	
	Emp e1=new Emp(strempno,strename,streage,streadd,stresal);
	objDH.insertIntoTblEmp(e1);
	out.println("data inserted");
	}
	else if(strbtn.equals("delete"))
	{
		out.println("data deleted");
	}
	else if(strbtn.equals("update"))
	{
		out.println("data updated");
	}
	else if(strbtn.equals("disp"));
	{
		LinkedList<Emp> lst=null;
		lst=objDH.getEmpTable();

	%>
<div class="container">
<div class="row">
<div class="col-md-3">
</div>
<div class="col-md-6">
<form action="frmsubmit.jsp" method="post">
<table class="table table-bordered table-dark table-hover">
<tr>
<th>empno</th>
<th>empname</th>
<th>eage</th>
<th>eadd</th>
<th>esal</th>
<th>select</th>
</tr>
<%
for(Emp e:lst)
{
   %>
	<tr>
	<td><%=e.getStrempno()%></td>
	<td><%=e.getStrename()%></td>
	<td><%=e.getStreage()%></td>
	<td><%=e.getStreadd()%></td>
	<td><%=e.getStresal()%></td>
	<td><input type="checkbox" name="chb" value="<%=e.getStrempno() %>"/>
	</td>
	</tr>
	<%
}


%>
</table>
<input type="submit" value="Delete multipal" name="btn" class="btn btn-success"/>
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
<%
}
}
else
{
	out.println("no button clicked so far");
}
	%>
	
	<form action="Registeremp.jsp" method="post">
	<div class="container">
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-3">
	empno:
	</div>
	<div class="col-md-3">
	<input type="text" name="txtempno"/>
	</div>
	<div class="col-md-3">
	</div>
	</div>
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-3">
	ename:
	</div>
	<div class="col-md-3">
	<input type="text" name="txtempno"/>
	</div>
	<div class="col-md-3">
	</div>
	</div>
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-3">
	eage:
	</div>
	<div class="col-md-3">
	<input type="text" name="txteage"/>
	</div>
	<div class="col-md-3">
	</div>
	</div>
	<div class="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-3">
	eadd:
	</div>
	<div class="col-md-3">
	<input type="text"name="txteadd"/>
	</div>
	<div class="col-md-3">
	</div>
	</div>
	<div  clas="row">
	<div class="col-md-3">
	</div>
	<div class="col-md-3">
	esal:
	</div>
	<div class="col-md-3">
	<input type="text"name="txtesal"/>
	</div>
	<div class="col-md-3">
	</div>
	</div>
	<div class="row">
	<div class="col-md-3">
	<input type="submit" value="update" name="btn" class="btn btn-primary"/>
	</div>
	<div class="col-md-3">
	<input type="submit"value="delete" name="btn" class="btn btn-warning"/>
	</div>
	<div class="col-md-3">
	<input type="submit"value="disp" name="btn" class="btn btn-success"/>
	</div>
	<div class="col-md-3">
	<input type="submit" value="insert" name="btn" class="btn btn-primary"/>
	</div>
	</div>
	</div>
	</form>
	</body>