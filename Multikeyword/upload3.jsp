

<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%


String file=(String)session.getAttribute("file");
Connection con1 = databasecon.getconnection();
try
{
	String ss=null;
	while(ss==null){
	Statement st1 = con1.createStatement();
	String sss1 = "select * from temp where keywords!='non'  ";
	ResultSet rs=st1.executeQuery(sss1);
	if(rs.next())
	{
		ss="finish";
	}
System.out.println("waiting");
	Thread.sleep(7000);
	}
}
catch(Exception e){System.out.println(e);
e.printStackTrace();}
%>

<%out.println("<script type=text/javascript>alert('Private Key Generated '); </script> ");

response.sendRedirect("upload4.jsp");%>




