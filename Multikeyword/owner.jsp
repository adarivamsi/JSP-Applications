<%
session.invalidate();%>


<%@ include file="header.jsp"%>
<br><br><br>
<center>
<h1><font align="center" size="" color="#006600">Data Owner Page</h1></font>
<b>
<table align="left">
<tr>
	<td>

</tr>
</table>
<form method="post" action="ologin.jsp">
	<table align=right cellspacing=20 ><tr><td>
<tr><td><h2><font size="" color="#009900">Login..</font>
	<tr><td><font color=#00cc00 size=3><td><input type="text" name="uid" required placeholder="UserName" size="35">
		<tr><td><font color=#00cc00 size=3><td><input type="password" name="pwd" required placeholder="Password" size="35">

			<tr><td><td>		  <div class="form_settings"><input class="submit" type="submit"  value="Login" /></div><td>

</tr>
</table>

					<table align=right cellspacing=20 ><tr><td><td>
	                  <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("fail"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3>&nbsp;&nbsp;&nbsp;Login Fail   !! </blink></font></h3>");
                                                       }
                                               %>
											   </table>

</form>
											   <br>											   <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



											   




<%@ include file="footer.jsp"%>