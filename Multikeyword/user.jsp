<%
session.invalidate();%>



<%@ include file="header.jsp"%>
<br><br><center>
<h1><font align="center">Data User Page</h1></font>
<b>	 

<form method="post" action="ulogin.jsp">
					<table  cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

	<table align=center cellspacing=20 ><tr><td>
<tr><td><h2><font size="" color="#ff9900">User Login..</font>
	<tr><td><input type="text" name="uid" required placeholder="UserName" size="30">
		<tr><td><input type="password" name="pwd" required placeholder="Password" size="30">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

		<tr><td align="right"><a href="useradd.jsp"><img src="images/user_aquisition_icon1.png" width="48" height="48" border="0" alt=""><u>SignUp</a>
				
</tr>
</table>


</form>
				
											   <br><br><br><br><br>



<%@ include file="footer2.jsp"%>