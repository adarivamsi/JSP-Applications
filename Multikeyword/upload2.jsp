<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ include file="oheader.jsp"%>
<HEAD>
<script type="text/javascript">  
<!--//  
function f1Submit() {  
alert('Request Sent to Trapdoor');  
document.f1.action="upload3.jsp"  
document.f1.submit();  

}  
  
function f2Submit() {  
document.f2.action="upload4.jsp"  
document.f2.submit();  
alert('Data Storing.');  
}  
</script>
</HEAD>
<center><br><br>


	<table cellspacing=10>
<%int c=(Integer)session.getAttribute("c");%>
<%String owner=(String)session.getAttribute("owner");%>
<%String file=(String)session.getAttribute("file");%>

<%Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
st1.executeUpdate("delete from temp");
st1.executeUpdate("insert into temp(fid, owner, file) values('"+c+"','"+owner+"','"+file+"')");

%>
	 <form name="f1" method="post">

<tr><td><h2>File Id</h2><td><h2><font size="" color="#7bbac1"><%=c%></h4>
<tr><td><h2>Uploaded by<td><h2><font size="" color="#7bbac1"><%=owner%>
<tr><td><h2>File Name<td><h2><font size="" color="#7bbac1"><%=file%>
<tr><td><h2>Key Words<td><textarea name="keys" rows="2" cols="30"></textarea><td>


<tr><td><td><input type="submit" name="submit" Value="   Generate by Trapdoors   "  onclick="f1Submit()" />  
</form>
 <form name="f2" method="post">
<tr><td>        <!-- <input type="submit" name="submit" Value="   Store File   "  onclick="f2Submit()" />   -->
</form>
</table>
	
<br><br>

<br><br><br><br>


<%@ include file="footer.jsp"%>
