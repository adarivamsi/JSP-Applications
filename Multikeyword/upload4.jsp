<%@ page import="java.sql.*,java.util.*,databaseconnection.*, matrix.*"%>
<%@ include file="oheader.jsp"%>
<HEAD>
<script type="text/javascript">  
<!--//  

</script>
</HEAD>
<center><br><br>
<table>
<%int c=(Integer)session.getAttribute("c");%>
<%String owner=(String)session.getAttribute("owner");%>
<%String file=(String)session.getAttribute("file");%>

<%
String keys=null;
String sk=null;

Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

ResultSet rs = st1.executeQuery("select * from temp where file='"+file+"'    ");
if(rs.next())
{
keys=rs.getString("keywords");
sk=rs.getString("s_k");
}
%>
<form method="post" action="upload5.jsp">
	


<tr><td><h2>File Id</h2><td><h2><font size="" color="#7bbac1"><%=c%>
<tr><td><h2>Uploaded by<td><h2><font size="" color="#7bbac1"><%=owner%>
<tr><td><h2>File Name<td><h2><font size="" color="#7bbac1"><%=file%>
<tr><td><h2>Key Words<td><textarea name="keys" rows="2" cols="30"><%=keys%></textarea><td>
<tr><td><h2>S K (Symmetric Key)<td><textarea name="sk" rows="2" cols="30"><%=sk%>
</textarea>


 <form name="f2" method="post">
<tr><td>        <div class="form_settings"><input class="submit" type="submit"  value="Store" /></div>  
</form>
				
				</table>
	
<br><br>

<br><br><br><br>


<%@ include file="footer.jsp"%>
