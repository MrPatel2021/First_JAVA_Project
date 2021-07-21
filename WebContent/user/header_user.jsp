<%@page import="com.dao.user_reg_dao"%>
<%@page import="com.bean.user_reg_bean"%>
<%@page import="com.controller.user_reg_controller"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	user_reg_bean ub = user_reg_dao.getuserdatabyid((Integer) session.getAttribute("id"));
%>
    
<!-- Header start -->
<div class="header">
  <div class="container">
    <div class="row">
      <div class="col-md-2 col-sm-3 col-xs-12"> <a href="index_user.jsp" class="logo"><img src="resources/images/logo.jpg" alt="" height="80px" width="180px"/></a>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="clearfix"></div>
      </div>
      <div class="col-md-10 col-sm-12 col-xs-12"> 
        <!-- Nav start -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-collapse collapse" id="nav-main">
            <ul class="nav navbar-nav">
              <li class=""><a href="index_user.jsp">Home </a> </li>
              <li><a href="aboutus_user.jsp">About Us</a></li>
              <li><a href="contactus_user.jsp">Contact Us</a></li>
              <li><a href="gallery_user.jsp">Gallery </a></li> 
              <li class="dropdown"><a href="#">Worker Category<span class="caret"></span></a>
                <!-- dropdown start -->
                <ul class="dropdown-menu">
                 <%          	
		        	addworkercategorydao awcb = new addworkercategorydao();
		    		List<add_category_bean> list = awcb.getAllWorkerCategory();
		          	
		          	for(add_category_bean acb : list)
		          	{
		          	
		          %>
                 
                 <form action="<%=application.getContextPath()%>/worker_reg_controller" method="post">
               			<button type="submit" name="action" value="getcategorybyuserid" style="background-color: white;border:none;height: 30px;width: 150px;font-weight: bold;">
				 	       <a class="dropdown-item" value="<%=acb.getCategoryid()%>" >
				 	       <input type="hidden" name="categoryid" value="<%=acb.getCategoryid()%>">
				            <%=acb.getCategoryname() %></a>
			            </button>
			     </form>		 
             <%--      <li><a href=""><%out.println(acb.getCategoryname());%></a></li> --%>         
                                
		          <%		          
		          	}		          
		          %>
                  </ul>
                 </li>
                 
                 <li><a href="feedback_user.jsp">Feedback </a></li>       
                
            <li> <a href=""  class="font-weight-bold" style="color: blue !important;"><%out.println(ub.getfname());%></a>                 
                     <ul class="dropdown-menu">
                    <li><a href="user_profile.jsp"><i class="fa fa-pencil" aria-hidden="true"></i> Profile Of User</a></li>
                     <li role="separator" class="divider"></li>
                    <li><a href="logout_user.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                </ul>
              </li>
              <img src="../uploaded_images/<%=ub.getprofile() %>" alt=" " class="img-circle img-bordered nav-link" height="50" width="50"/>
              
            </ul>
            <!-- Nav collapes end --> 
          </div>
          <div class="clearfix"></div>
        </div>
        <!-- Nav end -->  
      </div>
    </div>
    <!-- row end --> 
  </div>
  <!-- Header container end --> 
</div>
<!-- Header end -->