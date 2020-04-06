<%@page import="com.oreilly.servlet.*,java.sql.*,databaseconnection.*" %>
<%
	String sk=request.getParameter("sk");
	sk=sk.trim();

		
		
		String fid =(String)session.getAttribute("fid");


		String user =(String)session.getAttribute("user");
		String fn =(String)session.getAttribute("fn");

		Connection con=databasecon.getconnection();
		Statement st=con.createStatement();	
		Statement st2=con.createStatement();	
		String sql="select * from data where Index_id='"+fid+"' && s_k ='"+sk+"' ";

		System.out.println(sql);
		ResultSet	rs=st.executeQuery(sql);

		if(rs.next())
		{
				
			response.sendRedirect("download3.jsp");

		}else
		{response.sendRedirect("u_home.jsp?id=wrongkey");
		}



%>
