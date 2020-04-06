<%@ page  import="java.sql.*" import="databaseconnection.*" import="javax.swing.JOptionPane"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style3.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="AGROFIRM Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 <script src="js/responsiveslides.min.js"></script>
 </script>

<%
String key=request.getParameter("id");
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

%>

<div id="table_wrapper">
  <div id="tbody">

    <table align="right">
    <tr><td> 
	<tr><td align="left">
	<font size="3" color="white">> User Serach for '<%=key%>'</font>
	<tr><td align="left">		<br><font size="3" color="white">> Search the files based on keywords</font>
	<tr><td align="left">		<br><font size="3" color="white">> Findind RScore of Retrieve files with Search keywords </font>
	
	

	<tr><td>    <br><tr><td align="left"> 
	<i><font size="3" color="white"  >>  Data Loaded</font></i>

	
	<tr><td>    <br>


	<%
String sql="select *  from tfidf order by f3 desc ";

System.out.println(sql);
ResultSet rs=st1.executeQuery(sql);

	while(rs.next())
	{%>
	<tr><td>    <tr><td  align="left">
	<font size="3" color="white">>TFIDF of (<%=key%>)  in <%=rs.getString(2).replace(".txt","")%> index == <%=rs.getString(3)%></font>
	<%}
	%>
	<tr><td>    <tr><td  align="left">&nbsp;
		<tr><td>    <tr><td  align="left">&nbsp;
			<tr><td>    <tr><td  align="left">&nbsp;
   </table>
  </div>
</div>
</font>

