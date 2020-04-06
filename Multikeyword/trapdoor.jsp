<%@ include file="header.jsp"%>
<br><br>
<center>
<h1>Trapdoor Page</h1>

<b>

<br>
<form method="post" action="tlogin.jsp">
<table align=center cellspacing=20 ><tr><td>
<tr><td><h2><font size="" color="#48d0d0">Login..
	<tr><td><input type="text" name="uid" required size="30" placeholder="Username">
		<tr><td><input type="password" name="pwd" required size="30" placeholder="Password">

			<tr><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

</tr>
</table>

					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("m");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form>
											   <br>

											   
											   <br><br><br><br><br>



<%@ include file="footer.jsp"%>