<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>



<%! String name, lname, addr, city, state, zip, tele, email, un, pwd;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select max(id) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
lname=request.getParameter("lname");
addr=request.getParameter("addr");
city=request.getParameter("city");
state=request.getParameter("state");
 zip=request.getParameter("zip");
tele=request.getParameter("tele");
 email=request.getParameter("email");
pwd=request.getParameter("pwd");
System.out.println(pwd);
%>
<%
try{

Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="user110"+i;

int q= st.executeUpdate("insert into register values('"+i+"','"+name+"','"+lname+"','"+addr+"','"+city+"','"+state+"','"+zip+"','"+tele+"','"+email+"', '"+un+"', '"+pwd+"','non')");

if(q>0)
{
	response.sendRedirect("useradd.jsp?id="+un+"");
	//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("useradd.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>
