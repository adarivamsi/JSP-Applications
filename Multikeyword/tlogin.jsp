
<%
String pass=null,uid=null;

String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;



try
{
if(a.equals("trapdoor")&&b.equals("trapdoor"))
{
response.sendRedirect("t_home.jsp");
}
	
	else
	{
     	response.sendRedirect("trapdoor.jsp?m=fail");
	}

	}
catch(Exception e1)
{
out.println(e1);
}

%>