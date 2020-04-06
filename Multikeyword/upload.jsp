	             
<%@ include file="oheader.jsp"%>
     <%
                                                       String m=request.getParameter("id");
                                                       if(m!=null && m.equalsIgnoreCase("succ"))
                                                       {
                                                               out.println("<font  color='red'><blink><h3><p><br><br>&nbsp;&nbsp;&nbsp;File Uploaded Successfully  !! </blink></font></h3>");
                                                       }
                                               %>

<center><br><br><br>
<h2>Select File for uploading</h2><br><br><br>
	<form name="f2" action="fileinsert1.jsp" ENCTYPE="multipart/form-data" method="post" onsubmit="return reg()" required>
	<table>
<tr> <td><input type="file" name="file" required>

<tr>                <td>     <div class="form_settings"><input class="submit" type="submit"  value="Upload" /></div>   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
              </tr>
			  	</table>
	</form>
<br><br>

<br><br><br><br>


<%@ include file="footer.jsp"%>