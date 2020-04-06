
<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
		<%@ include file="oheader.jsp"%>
		<form action="update1.jsp">
<br><br><br>
<center>
          <table bgcolor="" cellpadding="20" cellspacing="5" width="725" border="0" align="center">
            <tr  bgcolor="#848ea6"> 
            <tr bgcolor="#848ea6"> 
             
            
            
              
              
            </tr>
            <%
			String id=request.getParameter("id");
			String u=(String)session.getAttribute("owner");
			


ResultSet rs=null;
String all="allowed";
try
{
	Connection con = databasecon.getconnection();
	Statement st = con.createStatement();	

    String qry="select index_id,  file_name,file from data where index_id='"+id+"' ";
		rs =st.executeQuery(qry);
		String sno=null,owner=null,name=null,file=null;
	while(rs.next())
	{
	sno=rs.getString(1);
	name=rs.getString(2);
		file=rs.getString(3);
	


	
	 
%>
      
			<tr > 
              <td align="center"><font color="#110022"><strong>Index. No</strong></font></td> <td ><input type="text" name="sno" value= <%=sno%> readonly> </td></tr>
               <tr> <td align="center"> <font color="#110022"><strong>File Name</strong></font></td><td ><input type="text" name="name" value= <%=name%> readonly> </td></tr>
    				<tr><td align="center"><font color="#110022"><strong>File</strong></font></td><td ><textarea name="file" rows="8" cols="50"><%=file%></textarea>  </td></tr>

           
            </tr>
						<tr><td><td>		<a class="btn btn-1 btn-1c more" href="update.jsp?id=<%=id%>">Decrypt</a>
            <%
	   }
	   }
	   catch(Exception e1)
	   {
	     out.println(e1);

	   }
 %>
          </table>
        </form>
		<br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>