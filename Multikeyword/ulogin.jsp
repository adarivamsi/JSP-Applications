<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String a = request.getParameter("uid");
String b= request.getParameter("pwd");
String name=null,u=null,test2=null;

try{
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from register where un='"+a+"' && pwd='"+b+"' && des='accept'  ";

	ResultSet rs1=st1.executeQuery(sss1);
	if(rs1.next())
	{

	u=rs1.getString("un");
		name=rs1.getString("name");
		session.setAttribute("name",name);
		session.setAttribute("user",u);
		response.sendRedirect("u_home.jsp");
		}
		else{
		response.sendRedirect("user.jsp?id=fail");

		}
}


catch(Exception e1)
{
out.println(e1.getMessage());
}

%>