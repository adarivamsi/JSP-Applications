  <%
    String m=request.getParameter("id");
  if(m!=null && m.equalsIgnoreCase("exp"))
    {
     out.println("<script type=text/javascript>alert('Sorry, your session expired, login again '); </script>");
     }
%>


<%@ include file="header.jsp"%>


	<div class="content">
		<!--div class="container"-->
			
				<div class="about-section-bottom">

					<div class="col-md-6 what-we-do">

					<!--h4>System Architecture</h4>
				<!--	<img src="images/crop.jpg" alt="" /></a>-->
						
						
					</div>
					<!--<div class="col-md-6 feature-accord">

								<ul class="topic_grid">
								   <li class="list1"><h4 class="m_3">Design goals</span></h3></li>
								 </ul>
								  <div class="menu_vertical">
					         	 	<section class="accordation_menu">
									  <div>
									    <input id="label-1" name="lida" type="radio" checked/>
									   <label for="label-1" id="item1"><i class="ferme"> </i><span class="m_5">Dynamic:   </span><i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									    <div class="content1" id="a1">
									      <ul class="news_list">
											 <li class="date_desc">
							  			   	 		<p>The proposed scheme is designed to provide
not only multi-keyword query and accurate result
ranking, but also dynamic update on document collections.</p>
							  			   	 </li>
							  			   	 <div class="clearfix"> </div>
							  			  </ul>
									    </div>
									  </div>
									  <div>
									    <input id="label-2" name="lida" type="radio"/>
									    <label for="label-2" id="item2"><i class="icon-leaf" id="i2"></i>Search Efficiency:<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									    <div class="content1" id="a2">
									       <ul class="news_list">
											 <li class="date_desc">
							  			   	 	<p> The scheme aims to achieve sublinear
search efficiency by exploring a special tree-based
index and an efficient search algorithm.</p>
							  			   	 </li>
							  			   	 <div class="clearfix"> </div>
							  			  </ul>      
									    </div>
									  </div>
									  <div>
									    <input id="label-3" name="lida" type="radio"/>
									    <label for="label-3" id="item3"><i class="icon-trophy" id="i3"></i>Privacy-preserving: <i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									    <div class="content1" id="a3">
									       <ul class="news_list">
							  			     <li class="date_desc">
							  			   	 	<p> The scheme is designed to prevent
the cloud server from learning additional information
about the document collection, the index tree,
and the query.</p>
							  			   	 </li>
							  			   	 <div class="clearfix"> </div>
							  			  </ul>
									    </div>
									  </div>
									   <div>
									    <input id="label-4" name="lida" type="radio"/>
									    <label for="label-4" id="item4"><i class="icon-trophy" id="i4"></i>Index Confidentiality and Query Confidentiality: <i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
									    <div class="content1" id="a4">
									       <ul class="news_list">
							  			     <li class="date_desc">
							  			   	 	<p>The
underlying plaintext information, including keywords
in the index and query, TF values of keywords
stored in the index, and IDF values of query
keywords, should be protected from cloud server;</p>
							  			   	 </li>
							  			   	 <div class="clearfix"> </div>
							  			  </ul>
									    </div>
									  </div>
									   <div>
									   
							  			   	 <div class="clearfix"> </div>
							  			  </ul>
									    </div>
									  </div>
									</section>
								</div>
							</div>
						<div class="clearfix"></div>-->
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
  	<!----->





	<!----->




<!--%@ include file="footer.jsp"%-->