<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%@ include file="theader.jsp"%>
<%
                                                       String message=request.getParameter("id");
                                                       if(message!=null && message.equalsIgnoreCase("succ"))
                                                       {
                out.println("<script type=text/javascript>alert('Keys send to user'); </script>															   ");
                                                       }
                                               %>

<br><br>
<center>
<h1><font size="" color="orange">Requests are..</font></h1>

<font size="+2" color="#5471a0"><b>
  <%
int c=0;
  try{


Connection con=databasecon.getconnection();
	Statement st1 = con.createStatement();
	
	String sss1 = "select * from temp where keywords='non' ";

	ResultSet rs=st1.executeQuery(sss1);
	%>

	<table cellspacing=30>
	<tr><td>File Id<td>Owner<td>File<td>Action</tr>
	<%
	while(rs.next())	
	 {%>
	 <tr><td><font size="+2" color="#21158a"><%=rs.getString(1)%><td><font size="+2" color="#21158a"><%=rs.getString(2)%><td><font size="+2" color="#21158a"><%=rs.getString(3)%><td><a href="execute.jsp?id=<%=rs.getString(3)%>"><font size="+2" color="#21158a">Execute</a>
	 <%
	}
  }
  catch(Exception e){
  
  }
  %>

</table>
</font>
  <br>  <br>  <br>  <br>  <br>  
<%@ include file="footer2.jsp"%>