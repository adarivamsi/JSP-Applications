<%@ includefile="uheader.jsp"%>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*" %>
<br><br>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />


<%
	String fid =request.getParameter("id");
	session.setAttribute("fid",fid);

	//System.out.println(fid);
	String file1= null;
	String data1=null,data2=null,data3=null,fn=null,own=null;
	Connection con = null,con1 = null,con2 = null;
	PreparedStatement ps = null,ps1 = null,ps2 = null;
	ResultSet rs = null,rs1 = null,rs2 = null;
		

	
	try
	{
		 con=databasecon.getconnection();
		ps = con.prepareStatement("select AES_DECRYPT(file_name,'key'), file from data where index_id ='"+fid+"'");
		rs = ps.executeQuery();

		while(rs.next())
		{
		fn=rs.getString(1);


		session.setAttribute("fn",fn);
		file1=rs.getString(2);
		}
		
		
		
		
        
	
	}
		catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}
	
	
	%>
<h1>File Download</h1>
      <br/>
    </p>
        <form name="s" action="download1.jsp" method="post" >
          <table  cellpadding="" cellspacing="20">
            <tr> 
           <td align=left><h3><font size="" color="#5fc99c"><b>File Name</font></h2></strong></font></td>
              <td align=left > <strong><font color="#FF3333"><h3><%=fn%></h3></font></strong></em></td>
            </tr>
            <tr> 
              <td align=left><h3><font size="" color="#5fc99c"><b>File Data</h2></td>
              <td align=left><textarea name="b1" cols="30" rows="4" class="b"><%=file1%></textarea></td>
            </tr>
            <tr> 
              <td align=left><h3><font size="" color="#5fc99c"><b>File Decrtpt SK Key</h2></td>
              <td align=left><textarea name="b1" cols="30" rows="4" class="b"></textarea></td>
            </tr>

              <td align=left align="center"><input type="submit" name="s" value="Key Request " class="b1" ></td>
            </tr>
          </table>
        </form>
<%@ includefile="footer2.jsp"%>