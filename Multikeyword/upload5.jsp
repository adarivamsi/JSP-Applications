

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>

<% int mid=(Integer)session.getAttribute("mid");%>
<%int c=(Integer)session.getAttribute("c");%>
<%String owner=(String)session.getAttribute("owner");%>
<%String file=(String)session.getAttribute("file");%>
<%String keys=request.getParameter("keys");%>
<%String sk=request.getParameter("sk");
sk=sk.trim();
%>


<%
Connection con1 = databasecon.getconnection();
try
{
	Statement st1 = con1.createStatement();
	String sss1 = " update meta_data set keyword = AES_ENCRYPT('"+keys+"','key') where sno='"+c+"'";
	System.out.println(sss1);
	st1.executeUpdate(sss1);
	sss1 = " update data set s_k ='"+sk+"' where index_id='"+mid+"'";
	st1.executeUpdate(sss1);
response.sendRedirect("upload.jsp?id=succ");
	
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>








