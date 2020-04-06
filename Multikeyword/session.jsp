<%
					 
					  String o12=(String)session.getAttribute("owner");
					  if(o12 ==null)
					  {
							response.sendRedirect("index.jsp?id=exp");
					  }

%>