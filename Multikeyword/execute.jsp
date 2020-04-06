
<!DOCTYPE html>
<html>
<head>
<title>Trapdoor</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="AGROFIRM Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
 <script src="js/responsiveslides.min.js"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
  </script>
</head>
<body>
	<!-- header-section-starts -->
	<div class="header">
		<div class="container">
			<div class="tollfree">
				
			</div>
			<div class="clearfix"></div>
			<div class="navigation">
			 <div class="navigation-bar">
			 
				<span class="menu"></span>
				<div class="top-menu">
					<ul>
					<li>

		  <li class="current"><a href="t_home.jsp">Home</a></li>
          <li><a href="req.jsp">New Request</a></li>
          <li><a href="keywords.jsp">Key Words</a></li>
          <li><a href="index.jsp">Logout</a></li>
		 
		 
		 
		 <div class="clearfix"></div>
					</ul>
				</div>
				<!-- script for menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!-- script for menu -->
					<div class="clearfix"> </div>
			</div>
			</div>
		</div>
		<br><br>
	</div>	</div>
	<!-- header-section-ends -->
	<!----->

<!----->
<div class="slider1">	  
	  <div class="callbacks_container">
	      <ul class="rslides" id="slider1">
	         <li>
				 <img src="images/side-2.jpg" alt=""/>
				  <div class="caption caption1">
<h1><font size="" color="white">A Secure and Dynamic Multi-keyword Ranked
Search Scheme over Encrypted Cloud Data</font></h1>				  </div>
	         </li>
	         <li>
				 <img src="images/side-1.jpg" alt=""/>
				  <div class="caption caption1">
<h1><font size="" color="white">A Secure and Dynamic Multi-keyword Ranked
Search Scheme over Encrypted Cloud Data</font></h1>				  </div>
	         </li>
	         <li>
				 <img src="images/side-3.jpg" alt=""/>
				  <div class="caption caption1">
<h1><font size="" color="white">A Secure and Dynamic Multi-keyword Ranked
Search Scheme over Encrypted Cloud Data</font></h1>				  </div>
	         </li>
	      </ul>	      
      </div>
</div>



<script src="js/responsiveslides.min.js"></script>
	 <script>
		$(function () {
		  $("#slider1").responsiveSlides({
			auto: true,
			speed: 500,
			namespace: "callbacks",
			pager: true,
		  });
		});
	  </script>

 <div class="about-content">
		<div class="container">
			<div class="error-404 text-center">



<%//out.println("<script type=text/javascript>alert('Request Processing '); </script> ");%>

<%@ page  import="java.sql.*"  import="java.util.*" import="databaseconnection.*" import="ct.*" %>
<%@ page import="matrix.*"%>
<%

String file=request.getParameter("id");
StopWords.main(file);
Vector v=new Vector();
Vector vv=new Vector();

v=Occurance.main(file);

System.out.println(v.size());

%>


<table>
<tr><td>
<br><br><br><br><br>

<%
Connection con=databasecon.getconnection();
Statement st = con.createStatement();
String temp=null, tmp=null, sql=null;
String[] arr=null;
	for(int i=0; i<v.size();i++)
	{
	temp=(String)v.get(i);
	arr=temp.split(" Occured ");
	tmp=arr[0];

			
	vv.add(tmp);

	}
	System.out.println(vv.size());

String keywords=null;

for(Object s:vv)
{

	if (keywords==null)
	{
		keywords=""+s;
	}else
		keywords=keywords+", "+s;

}
System.out.println(keywords);
Vector v2=Matrix.main(3);
%>



<table>
<tr>
	<td>
<h4><font size="+1" color="#3d6687"><b>The subset of W, representing the keywords in a<br>
search request, denoted as <i>W</i></h4><br><br>
<form method="post" action="execute2.jsp">


<input type="hidden" name="file" value="<%=file%>">
<textarea name="keys" rows="3" cols="35" ><%=keywords%></textarea>
<tr><td><font size="+1" color="#3d6687"><b>
S_K (Symmetric Key)<br><textarea name="sk" rows="3" cols="35"><%for(Object o:v2){out.println(o.toString().trim());}%></textarea></td>
</tr>


<tr><td>
 <div class="form_settings"><input class="submit" type="submit"  value="Forward" /></div>
</form>
</table>
<td valign="top">
<div id="table_wrapper">
  <div id="tbody">

    <table align="left">
    <tr><td>    <tr><td align="left">
	<font size="3" color="white">> Loading the File..</font>
	

	
	<tr><td>  <br>  <tr><td  align="left">
	<b><font size="3" color="white">> File name is '<%=file%>'</font></b>
	

	<tr><td>    <br><tr><td align="left"> 
	<i><font size="3" color="white"  >>  Data Loaded</font></i>

	<tr><td>    <br><tr><td align="left">
	<u><font size="3" color="white"  align="left">>  Keywords  Occurences  count</font></u>
	
	<tr><td>    <br>


	<%
	for(int i=0; i<v.size();i++)
	{%>
	<tr><td>    <tr><td  align="left">
	<font size="3" color="white">>  <%=v.get(i)%></font>
	<%}
	%>
	<tr><td>    <tr><td  align="left">&nbsp;
		<tr><td>    <tr><td  align="left">&nbsp;
			<tr><td>    <tr><td  align="left">&nbsp;
   </table>
  </div>
</div>
</font>


</table>

  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>  <br>
