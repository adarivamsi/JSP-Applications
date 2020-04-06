<%@ page  import="java.sql.*" import="java.util.Vector"  import="com.vector.space.model.*" import="java.io.PrintWriter"  import="java.io.File" import="databaseconnection.*"  %>

<%@ include file="uheader.jsp"%>
<%

String key=request.getParameter("search");

String[] temp=key.split(",");

PrintWriter pw=null; 
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
Statement st2 = con.createStatement();


%>


<%
File f=new File("D://Trapdoor Data/Files"); 
 File[] files = f.listFiles(); 
        for (File f1:files) 
        {  
			System.out.println(f1.delete());
		System.out.println("deleted"+f1);
	}

//f.delete();
//f.mkdirs();
f=null;
		 pw=new PrintWriter("D://Trapdoor Data/Files/0.txt"); 
		pw.println(key);
		pw.flush();
		pw.close();


String sql="";

ResultSet rs=null;
ResultSet rs2=null;



for(String kkk:temp){
sql="select *  from meta_data where  AES_DECRYPT(keyword,'key') like '%"+kkk+"%' ";

System.out.println(sql);
rs=st1.executeQuery(sql);
%>
<%
while(rs.next())
{


				pw=new PrintWriter("D://Trapdoor Data/Files/"+rs.getString(3)+".txt"); 
				rs2=st2.executeQuery("select  AES_DECRYPT(file,'key') from data where index_id="+rs.getString(3)+"");
				if(rs2.next())
				{
				pw.println(rs2.getString(1));					
				}

				pw.flush();
				pw.close();

}
}
%>
<br>
<table>
<tr>
	<td align="left"><h4><font size="+4" color="">Search Results</font></h1>
<h4>Top-K according to relevance based on TF-IDF</h4></td>
</tr>
</table>
<br><br>
<table cellspacing="20"><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><h3>S.No</h3><td><h3>File</h3>
<%
			TfIdfMain.main();
			String ff="";
			int cc=0;
			rs2=st2.executeQuery("select *from tfidf order by f3 desc ");
			while(rs2.next())
			{
				ff=rs2.getString(2);
				ff=ff.replace(".txt","");
				rs=st1.executeQuery("select  AES_DECRYPT(file_name,'key') from data where index_id="+ff+"");
				if(rs.next())
				{
						%>
						<tr><td><td><h3><font size="" color="#4a9bec"><%=++cc%></font></h3><td align="left"><h3><a href="search2.jsp?id=<%=ff%>" target="_blank"><font size="" color="#4a9bec"><%=rs.getString(1)%></a>
						<%

				}

			}

%>


</table>
<a href="#" onclick="window.open('ana.jsp?id=<%=key%>', 'newwindow', 'width=620, height=320'); return false;"><h3>Analysis</h3></a>

<br><br>
<%@ include file="footer2.jsp"%>