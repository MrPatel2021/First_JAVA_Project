<%@page import="com.bean.user_reg_bean" %>
<%@page import="com.dao.user_reg_dao" %>
<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao"%>
<%@page import="com.dao.EditProfileUserDao"%>
<%@page import="com.controller.EditProfileUserController"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
user_reg_bean ub = user_reg_dao.getuserdatabyid((Integer) session.getAttribute("id"));
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="head.jsp"></jsp:include>
</head>


<body>
<!-- Header start -->
  <jsp:include page="header_user.jsp"></jsp:include>
 <!-- Header End -->
 
 <!-- Register start -->
 
 <div>
 <div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Edit Profile Of User</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        </div>
    </div>
  </div>
</div>
<!-- Page Title End -->

<div class="listpgWraper">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
      <form   method="post" action="<%=application.getContextPath()%>/EditProfileUserController" data-parsley-validate="true" enctype="multipart/form-data">
          <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
                <input type="text" name="user_fname" autofocus class="form-control" placeholder="User First name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change" value=<%= ub.getfname()%>>
              </div>
        
              <div class="formrow">
                <input type="text" name="user_lname" autofocus class="form-control" placeholder="User Last name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change" value=<%= ub.getlname()%>>
              </div>
              
              <div class="formrow">
                <input data-parsley-type="email" name="email" class="form-control" placeholder="Email"  required="required" data-parsley-pattern="^[a-z0-9@.]+$" value=<%= ub.getemail()%>>
              </div>
    		  
              <div class="formrow">
                <input  name="phone_no" class="form-control" placeholder="Phone number"  required="required" data-parsley-minlength="10" value=<%= ub.getphone()%>>
              </div>
              <div class="formrow">
				<input type="text" class="form-control" placeholder="Address" name="address"  data-parsley-minlength="3" data-parsley-maxlength="50" value="<%=ub.getaddress()%>" required><br>
				</div>
              <input type="hidden" name="user_id" value="<%=ub.getuid()%>">  
              <input type="submit" class="btn" name="action" value="Edit Profile">
            </div>
          </div>
          </form>
        </div>      
      </div>
    </div>
  </div>
</div>
</div>
 <!-- Registration end -->
 <!-- footer start -->
 <jsp:include page="footer.jsp"></jsp:include>
 <!-- footer end -->
<jsp:include page="script.jsp"></jsp:include>
</div>
</body>
</html>