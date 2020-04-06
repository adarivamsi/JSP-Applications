

<%@ include file="header.jsp"%>


 <div class="about-content">
		<div class="container">
			<div class="error-404 text-center">



<h1>Admin Page</h1>



<form method="post"  action="alogin.jsp">
	<table align=right cellspacing=20 ><tr><td>
<tr><td><h3>Login..
	<tr><td><input type="text" name="uid" required size="30" placeholder="Username">
		<tr><td><input type="password" name="pwd" required size="30"  placeholder="Password">

			<tr><td align="left">		 <input  type="submit"  value="Login" /></div><td>

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
											   <br><br><br><br><br><br><br><br><br><br><br><br><br>

											   


</div></div></div>

<%@ include file="footer.jsp"%>