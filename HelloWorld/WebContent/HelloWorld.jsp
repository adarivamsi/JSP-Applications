<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expressions</title>
</head>
<body>

<%= new java.util.Date() %>

<br/>

<%= 25*10 %>

<br/>
Is 25 Greater than 50?  <br/> <%= 25>50 %>

<br/>

<% if(25>50) {
out.println("hi");
}else
{
	out.println("bye");
	}
%>


</body>
</html>