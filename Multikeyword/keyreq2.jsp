<%@ page import="java.sql.*,databaseconnection.*, Mail.*"%>

<%
String id=request.getParameter("id");
String user=request.getParameter("user");
String key="";String email="";


Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

ResultSet rs1=st1.executeQuery("select *  from data where  index_id='"+id+"'  " );
if(rs1.next())
{
	key=rs1.getString("s_k");
}

Statement st2 = con.createStatement();

ResultSet rs2=st2.executeQuery("select *  from register where  un='"+user+"'  " );
if(rs2.next())
{
	email=rs2.getString("email");
}

mail.mailsend(key,email);

Statement st3 = con.createStatement();
st3.executeUpdate("delete   from request" );
response.sendRedirect("keyreq.jsp?id=succ");


%>
