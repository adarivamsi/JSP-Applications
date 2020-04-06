<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<%@ page import="java.sql.*"%>



<%! String name, gen,addr, city, street, zip, tele, email, uid, pwd,ph,un;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select count(*) from register");
if(rs.next())
{
	i=rs.getInt(1);
	++i;
}
}
catch(Exception e){
System.out.println("Exception Occured");}

name=request.getParameter("name");
email=request.getParameter("email");
street=request.getParameter("street");
city=request.getParameter("city");

 zip=request.getParameter("zip");
ph=request.getParameter("ph");
 gen=request.getParameter("gen");
 uid=request.getParameter("uid");
pwd=request.getParameter("pwd");
System.out.println(pwd);
%>



<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();
un="owner110"+i;

int q= st.executeUpdate("insert into owner values('"+i+"','"+name+"','"+email+"','"+street+"','"+city+"','"+zip+"','"+ph+"','"+gen+"', '"+uid+"', '"+pwd+"')");

if(q>0)
{
response.sendRedirect("aowner.jsp?id=succ" );
//response.sendRedirect("register.jsp?message=succ");
}
else
	response.sendRedirect("aowner.jsp?message=fail");

}
catch(Exception e)
{
e.printStackTrace();
	}
%>

