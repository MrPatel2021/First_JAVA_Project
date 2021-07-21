<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.user_reg_bean" %>
<%@page import="com.dao.user_reg_dao" %>
<!DOCTYPE html>
<html lang="en">
<%
	user_reg_bean ub = user_reg_dao.getuserdatabyid((Integer) session.getAttribute("id"));
%>
<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<jsp:include page="head.jsp"></jsp:include>
<body>
<!-- Header start -->
  <jsp:include page="header_user.jsp"></jsp:include>
 <!-- Header End -->

<div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Feedback</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="breadCrumb"><a href="#"></div>
      </div>
    </div>
  </div>
</div>


<div class="listpgWraper">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
      <form method="post" action="<%=application.getContextPath()%>/FeedbackController" class="animated wow " data-wow-delay=".5s"  data-parsley-validate refresh()>
      
      <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Full Name :</h5>
            
                <input type="text" name="name" id="name" autofocus class="form-control" placeholder="Name" required data-parsley-length="[3,20]" value=<%= ub.getfname()%>><br>
              </div>
	  </div>
			   
      <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Email :</h5>
            
                <input type="email" name="email" id="email" autofocus class="form-control" placeholder="Name" required value=<%= ub.getemail()%> data-parsley-error-message="Please Enter Valid E-mail" data-parsley-pattern="^[a-z0-9@.]+$"><br>					
			
              </div>
			</div>
	  </div>
	  	<h5>Overall Satisfaction</h5>
	  		<div class="radio-btns">
					<div class="swit">								
						<div class="check_box_one"> <div class=""> <label><input type="radio" name="satisfaction" checked value="Very Good"><i></i>Very Good</label> </div></div>
                        <div class="check_box"> <div class=""> <label><input type="radio" name="satisfaction" value="Good"><i></i>Good</label> </div></div>
						<div class="check_box"> <div class=""> <label><input type="radio" name="satisfaction" value="Fair"><i></i>Fair</label> </div></div>
						<div class="check_box"> <div class=""> <label><input type="radio" name="satisfaction" value="Poor"><i></i>Poor</label> </div></div>
						<div class="clear"></div>
					</div>
			</div>	
      
        <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Topic :</h5>
            
                <input type="text" name="topic" autofocus class="form-control" placeholder="Enter Topic Name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
              </div>
			</div>
		</div>
		<div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Message :</h5>
            
                <input type="text" name="message" autofocus class="form-control" placeholder="Enter Message "  required="required" data-parsley-length="[3,300]" data-parsley-trigger="change">
              </div>
			</div>
		</div>
		
		 <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
         
		 <div class="formrow">
		        <input type="submit" name="action" class="btn btn-large btn-primary" value="Submit">
         </div>
    </div>
</div>
       
</form>
</div>
</div>
</div>
</div>
</div>
</div>

              

<!-- footer start -->
 <jsp:include page="footer.jsp"></jsp:include>
 <!-- footer end -->
<jsp:include page="script.jsp"></jsp:include>



</body>
</html>