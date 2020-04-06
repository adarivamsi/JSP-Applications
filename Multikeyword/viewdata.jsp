
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="oheader.jsp"%>
		<%
		if(request.getParameter("msg")!=null)
		{
			out.println("<script>alert('File Updated Successfully')</script>");
		}
		if(request.getParameter("msg1")!=null)
		{
			out.println("<script>alert('File Deleted Successfully')</script>");
		}
		%>
		<form>
		<br><br><br>

<center>
<h1>Search Index</h1>
          <table bgcolor="" cellpadding="20" cellspacing="5" width="925" border="0" align="center">
            <tr  bgcolor="#848ea6"> 
            <tr bgcolor="#848ea6"> 
              <td align="center"><font color="#110022"><strong><h3>S. No</h3></strong></font></td>

              <td align="center"><font color="#110022"><strong><h3>Index_Id </h3></strong></font></td>
              <td align="center"><font color="#110022"><strong><h3>Keywords</h3></strong></font></td>

              </tr>
            <%
			String u=(String)session.getAttribute("owner");
			


ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select *  from meta_data where owner='"+u+"' ";
		rs =st.executeQuery(qry);
		String sno=null,owner=null,name=null,keyword=null;
	int cc=0;
	
		while(rs.next())
		{
		++cc;
	 
	%>
    
			
<tr bgcolor="#d2d2d2"> 
          <td align="center"> <strong><font size="3" color="#6300C6"> <%=cc%> </font></strong></td>
          <td align="center"><strong><font size="3" color="#6300C6"> <%=rs.getString("index_id")%> </font></strong></td>
          <td align="center"><strong><font size="3" color="#6300C6"><%=rs.getString("keyword")%>  </font></strong></td>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1);

	   }
 %>
          </table>


		  					<br><br><br>
								<a class="btn btn-1 btn-1c more" href="viewdata2.jsp">Decrypt</a>

        </form>
		<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>