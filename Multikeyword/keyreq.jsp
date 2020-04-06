<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="theader.jsp"%>
<center><br><br>

<%
String own = (String)session.getAttribute("owner");

String name=null,u=null,test2=null;
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
	
String sss1 = "select * from request where  des='non' ";
ResultSet rs=st1.executeQuery(sss1);
%>

                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<font color='red' size=+2><blink>Key Transfer Successfully ! <br></font> ");
                                                       }
													   else {%>
												
                                               <%}%>



<h1>Key Requests from Users</h1><br>
<table cellspacing=20> 
<tr><td><h3>Request From <td><h3>File Id<td><h3>File Name<td><h3>Action
<%
while(rs.next())
	{%>
<tr><th><h3><font color="red"><%=rs.getString(3)%><th><h3><font color="red"><%=rs.getString(1)%><th><h3><font color="red"><%=rs.getString(2)%><th><h3><font color="red"><a href="keyreq2.jsp?id=<%=rs.getString(1)%>&user=<%=rs.getString(3)%>">Transfer</a>
	<%}



%>
</table>
<br><br><br><br>


<%@ include file="footer2.jsp"%>