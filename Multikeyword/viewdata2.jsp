
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="oheader.jsp"%>
		<%
		if(request.getParameter("msg")!=null)
		{
			out.println("<script>alert('Keywords Updated Successfully')</script>");
		}
		if(request.getParameter("msg1")!=null)
		{
			out.println("<script>alert('Row Deleted Successfully')</script>");
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
              <td align="center"><font color="#110022"><strong><h3>Download</h3></strong></font></td>
               <td align="center"><font color="#110022"><strong><h3>Update</h3></strong></font></td>
              <td align="center"><font color="#110022"><strong><h3>Delete</h3></strong></font></td>
              </tr>
            <%
			String u=(String)session.getAttribute("owner");
			


ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select index_id, AES_DECRYPT(keyword,'key')  from meta_data where owner='"+u+"' ";
		rs =st.executeQuery(qry);
		String sno=null,owner=null,name=null,keyword=null;
	int cc=0;
	
		while(rs.next())
		{
		++cc;
	 
	%>
    
			
<tr bgcolor="#d2d2d2"> 
          <td align="center"> <strong><font size="3" color="#6300C6"> <%=cc%> </font></strong></td>
          <td align="center"><strong><font size="3" color="#6300C6"> <%=rs.getString(1)%> </font></strong></td>
          <td align="center"><strong><font size="3" color="#6300C6"><%=rs.getString(2)%>  </font></strong></td>
           <td align="center"><a href="file_download.jsp?id= <%=rs.getString(1)%>"><strong><font color="#6300C6" class="big"> 
                Download</font></strong></a></td>
		  <td align="center"><a href="update0.jsp?id= <%=rs.getString(1)%>"><strong><font color="#6300C6" class="big"> 
                Update</font></strong></a></td>
	    <td align="center"><a href="delete.jsp?id= <%=rs.getString(1)%>"><strong><font color="#6300C6" class="big"> 
                Delete</font></strong></a></td>
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

        </form>
		<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>