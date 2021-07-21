<%@page import="com.bean.worker_reg_bean" %>
<%@page import="com.dao.worker_reg_dao" %>
<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>
<%@page import="com.dao.EditProfileWorkerDao"%>
<%@page import="com.controller.EditProfileWorkerController"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
worker_reg_bean wb = worker_reg_dao.getuserdatabyid((Integer) session.getAttribute("id"));
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="head.jsp"></jsp:include>
</head>
<body>
<!-- Header start -->
<jsp:include page="header_worker.jsp"></jsp:include>
<!-- Header End -->
 
 <!-- Register start -->
 
 <div>
 <div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Edit Profile Of Worker</h1>
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
      <form method="post" action="<%=application.getContextPath()%>/EditProfileWorkerController" enctype="multipart/form-data">
          <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
                <input type="text" name="worker_fname" autofocus class="form-control" placeholder="Worker First name "  required="required" value=<%= wb.getfname()%>>
              </div>
              <div class="formrow">
                <input type="text" name="worker_lname" autofocus class="form-control" placeholder="Worker Last name "  required="required" value=<%= wb.getlname()%>>
              </div>
              
              <div class="formrow">
                <input data-parsley-type="email" name="email" class="form-control" placeholder="Email"  required="required" data-parsley-pattern="^[a-z0-9@.]+$" value=<%= wb.getemail()%>>
              </div>
    		  
              <div class="formrow">
                <input type="text" name="phone_no" class="form-control" placeholder="Phone Number"  required="required" data-parsley-minlength="10" value=<%= wb.getphone()%>>
              </div>
              
               <div class="formrow">
				<input type="text" class="form-control" placeholder="Address" name="address"  data-parsley-minlength="3" data-parsley-maxlength="50" value="<%=wb.getaddress()%>" required><br>
				</div>
            	<input type="hidden" name="worker_id" value="<%=wb.getwid()%>">
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
<script type="text/javascript">
function myfunction()
{
	var x = document.getElementById("password")
	var y = document.getElementById("con_password")
	if(x.type ==="password")
		{
		x.type = "text";
		
		}
	else{
		x.type = "password";
	}
	if(x.type ==="con_password")
	{
	x.type = "text";
	
	}
	else{
	x.type = "con_password";
	}
}
</script>

</body>
</html>