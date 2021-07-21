<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
<!-- Header start -->
  <jsp:include page="header.jsp"></jsp:include>
 <!-- Header End -->
 <div class="listpgWraper">
 <div class="container">
 
 <div class="row"> 
 <div class="col-md-6 col-md-offset-3"> <%--<%=application.getContextPath() %>/ --%>
  <div class="userccount">
          <div class="socialLogin">
                                             	                                  
      		<form method="post" action="<%=application.getContextPath()%>/PasswordController" data-parsley-validate="true">
       			<div class="modal-header mb-3">
					<h4 class="" style="font-size:2vw ! important;">Password assistance</h4><!-- modal-title 	 -->
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>  
				 <div class="modal-body">
		           <p style="font-size: 1.2vw ! important">Enter your e-mail address below to reset your password.</p>
		           <input data-parsley-type="email" name="Email" placeholder="Email" autofocus autocomplete="off" class="form-control placeholder-no-fix" required data-parsley-trigger="change" data-parsley-error-message="Please Enter Valid E-mail" data-parsley-pattern="^[a-z0-9@.]+$">
		           <p class="font-weight-bold" style="font-size:15px ! important;">Enter the email address associated with your Happiness At Door account.</p>
		       </div>	
		        <div class="modal-footer">
		          <button data-dismiss="modal" class="btn btn-default" type="button" name="#" href="#">Cancel</button>		          
				<input type="submit" name="action" class="btn btn-danger" value="Submit!">			
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
 <!-- Bootstrap's JavaScript --> 
	<jsp:include page="script.jsp"></jsp:include>
 
</div>
</body>
</html>
