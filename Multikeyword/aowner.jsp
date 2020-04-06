<%@ include file="aheader.jsp"%>

                  <%
                                                       String id=request.getParameter("id");
                                                       if(id!=null )
                                                       {
                                                               out.println("<h3><font color='red'><blink>Registration Success !</h2> <br></font>");

                                                       }
%>
<center>
<h1>Add Data Owner</h1>
<form method="post" action="owneradd.jsp">
	
               <table cellspacing="10">
              <tr> 
                <td><font size="+1" color=#ff0066><strong>Full Name</strong>*</font><br>
                <input type="text" name="name" id = "name"  style="width: 250px;" required></td>
				<td><font size="+1" color=#ff0066><strong>Email</strong>*</font><br>
                <input type="text" name="email" id = "lname"  style="width: 250px;" required></td>	
              </tr>
			  </TABLE>
   <table cellspacing="10">
              <tr> 
                <td><font size="+1" color=#ff0066><strong>Street</strong>*</font><br>
                <input type="text" name="street" id = "name"  style="width: 250px;" required></td>
				<td><font size="+1" color=#ff0066><strong>City</strong>*</font><br>
                <input type="text" name="city" id = "lname"  style="width: 250px;" required></td>	
              </tr>
			  </TABLE>   <table cellspacing="10">
			  </TABLE>
			     <table cellspacing="10">
              <tr> 
			      <td><font size="+1" color=#ff0066><strong>Postal Code</strong>*</font><br>
                <input type="text" name="zip" id = "name"  style="width: 135px;" required></td>
                <td><font size="+1" color=#ff0066><strong>Contact No</strong>*</font><br>
                <input type="text" name="ph" id = "name"  style="width: 250px;" required></td>
               <td><font size="+1" color=#ff0066><strong>Gender</strong>*</font><br>
              <select name="gen">
				<option value="Male" selected>Male
				<option value="Female">Female
              </select>

              </tr>
			  </TABLE>
			     <table cellspacing="10">
              <tr> 
                <td><font size="+1" color=#ff0066><strong>Userid</strong>*</font><br>
                <input type="text" name="uid" id = "name"  style="width: 250px;" required></td>
				<td><font size="+1" color=#ff0066><strong>Password</strong>*</font><br>
                <input type="password" name="pwd" id = "lname"  style="width: 250px;" required></td>	
              </tr>
			  </TABLE>
			 	 <table cellspacing="10" >
			  <tr> 
                <td align="left">
<input class="submit" type="submit"  value="Register" /><td>
				
				<td>
				
				

              </tr>
               </table>

<br>

</form>

<%@ include file="footer2.jsp"%>
