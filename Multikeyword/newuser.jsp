<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<%@ include file="aheader.jsp"%>
<%
Connection con1=databasecon.getconnection();
//System.out.println(con1);
	Statement st = con1.createStatement();
	ResultSet rs=st.executeQuery("select * from register where des='non' ");
%>	
<h3>
<br>
<font size="" color="#f65900"><b>New Users are</h1></h2>
<table cellspacing=10 >
<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><td>

<tr><td><td><h3><font size="" color="#004f9d"><b><b>User Id<td><h3><font size="" color="#004f9d"><b>Name<td><h3><font size="" color="#004f9d"><b>City<td><h3><font size="" color="#004f9d"><b>Email<td><h3><font size="" color="#004f9d"><b>UserId<td><h3><font size="" color="#004f9d"><b>Desicion
<%while(rs.next())
	{
		%>
		<tr><td><td><h4><font size="" color="#797979"><b><%=rs.getString(1)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(2)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(5)%>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(9)%></font>
		<td><h4><font size="" color="#797979"><b><%=rs.getString(10)%>
		<td><font size="" color="#797979"><b><a href="des.jsp?id=<%=rs.getString(1)%>"><h4><font size="" color="#797979"><b>Accept</a> / <a href="des1.jsp?id=<%=rs.getString(1)%>"><font size="" color="#797979"><b>Decline</a>



<%
	}

												


                                               %>
											 
</table></table></b>
<br><br><br><br><br><br><br>
<%@ include file="footer2.jsp"%>
