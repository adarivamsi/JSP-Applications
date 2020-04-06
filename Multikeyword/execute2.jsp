

<%@ page  import="java.sql.*" import="databaseconnection.*" %>
<%
String file=request.getParameter("file");
String keys=request.getParameter("keys").trim();
String sk=request.getParameter("sk").trim();
Connection con1 = databasecon.getconnection();
Statement st1 = con1.createStatement();
String sss1 = "update temp set keywords='"+keys+"', s_k='"+sk+"' where file='"+file+"'  ";
st1.executeUpdate(sss1);
out.println("<script type=text/javascript>alert('Keys sent to Owner '); </script> ");
response.sendRedirect("req.jsp?id=succ");

%>

