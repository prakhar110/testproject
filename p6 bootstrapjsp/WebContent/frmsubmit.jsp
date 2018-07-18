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
<div class="container">
<%
String strbtn=request.getParameter("btn");
if(strbtn!=null)
{
	if(strbtn.equals("Delete multipal"))
	{
		DBHandler objDH=new DBHandler();
		String strSelectedEmpnos[]=request.getParameterValues("chb");
		for(String strempno:strSelectedEmpnos)
		{
			out.println(strempno);
		}
		objDH.deleteMultipalRows(strSelectedEmpnos);
		out.println("data deleted");
		
	}
}
%>
<a href='Registeremp.jsp' class="btn btn-primary">go to RegisterEmp Page</a>
</div>

</body>
</html>