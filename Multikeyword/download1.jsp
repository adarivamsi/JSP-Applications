<%@ page import="java.sql.*,databaseconnection.*"%>
<%
	String fid =(String)session.getAttribute("fid");

			String user =(String)session.getAttribute("user");
						String fn =(String)session.getAttribute("fn");
Connection con1=databasecon.getconnection();
Statement st1 = con1.createStatement();
try{
st1.executeUpdate("insert into request(fid, file, user) values('"+fid+"','"+fn+"','"+user+"')");
}
catch(Exception e){}
%>
<%@ includefile="uheader.jsp"%>


<script type="text/javascript">  

alert('Request Sent to Trapdoor'); 


</script>
<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*" %>
<br><br>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />


<%



	//System.out.println(fid);
	Blob file1= null;
	String data1=null,data2=null,data3=null;
	Connection con = null;
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

//		session.setAttribute("own",own);
		file1=rs.getBlob(2);
		}
		
		session.setAttribute("resumeBlob1",file1);
		
		
		byte[] bdata = file1.getBytes(1, (int)file1.length());
        data1 = new String(bdata);
        
	
	}
		catch(Exception e)
	{
	System.out.println("Exception :"+e);
	}
	
	
	%>
<h1>File Download</h1>
      <br/>
    </p>
        <form name="s" action="download2.jsp" method="post" >
          <table  cellpadding="" cellspacing="20">
            <tr> 
           <td align=left ><h3><font size="" color="#5fc99c"><b>File Name</font></h2></strong></font></td>
              <td align=left > <strong><font color="#FF3333"><h3><%=fn%></h3></font></strong></em></td>
            </tr>
            <tr> 
              <td align=left><h3><font size="" color="#5fc99c"><b>File Data</h2></td>
              <td align=left><textarea name="b1" cols="30" rows="4" class="b"><%=data1%></textarea></td>
            </tr>
            <tr> 
              <td align=left><h3><font size="" color="#5fc99c"><b>File Decrtpt SK Key</h2></td>
              <td align=left><textarea name="sk" cols="30" rows="4" class="b" autofocus minlength=20></textarea></td>
            </tr>

              <td align=left align="center">							 		<div class="form_settings">
<input class="submit" type="submit"  value="Download" /></div>
</td>
            </tr>
          </table>
        </form>
<%@ includefile="footer2.jsp"%>