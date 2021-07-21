<%@page import="java.util.List"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!-- Header start -->
<div class="header">
  <div class="container">
    <div class="row">
      <div class="col-md-2 col-sm-3 col-xs-12"> <a href="index.jsp" class="logo"><img src="resources/images/logo.jpg" alt="" height="80px" width="180px" /></a>
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div cass="clearfix"></div>
      </div>
      <div class="col-md-10 col-sm-12 col-xs-12"> 
        <!-- Nav start -->
        <div class="navbar navbar-default" role="navigation">
          <div class="navbar-collapse collapse" id="nav-main">
            <ul class="nav navbar-nav">
              <li class=""><a href="index.jsp">Home </a> </li>
              <li><a href="aboutus.jsp">About Us</a></li>
              <li><a href="contactus.jsp">Contact Us</a></li>
              <li><a href="gallary.jsp">Gallery </a></li> 
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
               			<button type="submit" name="action" value="getcategorybyid" style="background-color: white;border:none;height: 30px;width: 150px;font-weight: bold;">
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
                
                 <li class="dropdown"><a href="#">Registration<span class="caret"></span></a>
                <!-- dropdown start -->
                <ul class="dropdown-menu">
                  <li><a href="user.jsp">User</a></li>
                  <li><a href="worker.jsp">Worker</a></li>
                </ul>
                </li>       
                <!-- dropdown end --> 
              <li class="dropdown"><a href="#">Login<span class="caret"></span></a>
                <!-- dropdown start -->
                <ul class="dropdown-menu">
                  <li><a href="userlogin.jsp">User</a></li>
                  <li><a href="workerlogin.jsp">Worker</a></li>
                </ul>
                </li>
              
              <!-- <li class="dropdown userbtn"><a href="#"><img src="resources/images/pic/logo1.jpeg" alt="" class="userimg" /></a>
                <ul class="dropdown-menu">
                    <li><a href="user.jsp"><i class="fa fa-pencil" aria-hidden="true"></i> Edit Profile Of User</a></li>
                    <li><a href="worker.jsp"><i class="fa fa-pencil" aria-hidden="true"></i> Edit Profile Of Worker</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="logout_user.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
                </ul>
              </li> -->
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