

<%@ page  import="java.sql.*"  import="java.io.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>


<body>		
<%
		String fid =(String)session.getAttribute("fid");

	String fname=null;
	 		Blob file1 =null;
	 
	     try{
		 
		 Connection con=databasecon.getconnection();
		 PreparedStatement ps =con.prepareStatement("select AES_DECRYPT(file_name,'key'), AES_DECRYPT(file,'key')  from data where index_id ='"+fid+"'");
		 ResultSet rs = ps.executeQuery();
		 while(rs.next())
		 {
		file1=rs.getBlob(2);
		 fname=rs.getString(1);
		 }
		 
		 
		
	//	out.println(b);
		if(file1 != null)
		{
	
			String filename =fname;
		
			byte[] ba = file1.getBytes(1, (int)file1.length());
			response.setContentType("application/notepad");
			response.setHeader("Content-Disposition","attachment; filename=\""+filename+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			
			os.close();
			ba = null;
		
			session.removeAttribute("file");
						response.sendRedirect("u_home.jsp");
			}
	
			}
			catch(Exception e)
			{
			out.println("Exception :"+e);
			}
		
		
		
%>

</body>
</html>