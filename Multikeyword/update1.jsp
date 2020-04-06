
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%
		String sno=request.getParameter("sno"); 
		String file=request.getParameter("file"); 
ResultSet rs=null;
String all="allowed";

try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	
PreparedStatement psmnt = null;


psmnt = con.prepareStatement("update  data set  file=AES_ENCRYPT(?,'key')  where  index_id=? ");


psmnt.setString(1,file.toString());
psmnt.setString(2,sno);

	
int s = psmnt.executeUpdate();

		if(s>0)
	{
			response.sendRedirect("viewdata.jsp?msg=update");
	}}catch(Exception e){
	System.out.println(e);
	
	}
 %>
 