<%@page import="com.bean.add_sub_admin_bean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.add_sub_admin_dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

<!-- Head -->
<jsp:include page="head.jsp"></jsp:include>
<!-- / Head -->
<%-- <%
	add_sub_admin_bean ub = add_sub_admin_dao.getSubAdminById((Integer) session.getAttribute("aid"));
	/* add_sub_admin_bean ub = add_sub_admin_dao.getSubAdminById(Integer.parseInt(request.getParameter("aid"))); */
%> --%>
<!-- Header -->
<jsp:include page="header.jsp"></jsp:include>
<!-- / Header -->

<!-- sidebar -->
<jsp:include page="sidebar.jsp"></jsp:include>
<!-- / sidebar -->

<!--main content start-->
<section id="main-content">
<section class="wrapper">
	<!-- middle content -->
	
	<div class="table-agile-info" style="height: 475px; width: 400px; margin-left: 360px;">
 		<div class="panel panel-default">
    		<div class="panel-heading"> Admin Profile </div>
    		  <form action="#" method="post">
    		  
    		  <input type="image" src="Resources/images/2021.jpg" height="100px" width="100px" style="border-radius: 50%; margin-left: 100px;"><br><br>
	    	  <label>Name: </label>
	    	  <label style="color: blue">Dax Patel</label><br><br>
	    	  <label>Mail ID: </label>
	    	  <label style="color: blue">daxpatel2021@gmail.com</label><br><br>
	    	  <label>Mobile No: </label>
	    	  <label style="color: blue">9909369450</label><br><br>
	    	  <label>Address: </label>
	    	  <label style="color: blue">Ahmedabad, Gujarat, India.</label><br><br>
	    	  <label>Gender: </label>
	    	  <label style="color: blue">Male</label><br><br>
	    	  
	    	  <!-- <input type="submit" class="btn-primary" name="action" value="Save" style="margin-left: 30px;">
	    	  <input type="submit" class="btn-primary" name="action" value="Edit Profile">
	    	  <input type="submit" class="btn-primary" name="action" value="Edit Password"> -->
	    		
        	 </form>
		</div>
   	</div>
	
		<%-- <form action="#" method="post" class="font_size_md" data-parsley-validate>
	       <div class="row">
	       	<div class="col-sm-6 col-md-6 col-lg-6">
	            <label class ="font-weight-bold">First Name<span style="color:red;">*</span></label>
	            <input data-parsley-type="text" class="form-control" id="firstname"name="firstname" required  autocomplete="off" tabindex="2" placeholder="First Name" required value="<%=ub.getfname() %>" disabled><br>
            	<label class ="font-weight-bold">Address<span style="color:red;">*</span></label>
            	<textarea data-parsley-type="text" col="30" row="5"name="email" class="form-control" placeholder="" required  disabled><%=/* ub.getaddress() */ %></textarea>
            	<label class ="font-weight-bold">Date of Birth<span style="color:red;">*</span></label>
            	<button type="button" class="btn btn-lg btn-primary" data-toggle="modal" data-target="#edit_profile"><i class="fa fa-edit"> Edit Profile</i></button><br>
            	<span class="edit_profile mt-5" data-toggle="modal" data-target="#Change_password_form">Change Password</span><br>   
				<label class="checkbox">
			    <span class="pull-left">
			    	<a href="#" class="forgot-password-link forgotpwd" data-toggle="modal" data-target="#forgot_password_form"> Forgot Password?</a>
				</span>
				</label>            		  		 	                                                    		                          
		  	</div>		  					
		  					
	        <div class="col-sm-6 col-md-6 col-lg-6">
	        	<div class="form-group">
	            	<label class ="font-weight-bold">Last Name<span style="color:red;">*</span></label>
	            	<input data-parsley-type="text" id="lastname" name="lastname"class="form-control" autocomplete="off" required placeholder="Last Name" value="<%=/* ub.getlname() */ %>" disabled>
	            </div>
	            <div class="form-group">
	            	<label class ="font-weight-bold">Phone No.<span style="color:red;">*</span></label>
	            	<input data-parsley-type="digits" id="mobileno" name="mobileno"class="form-control" autocomplete="off" required placeholder="Phone No." value="<%= /* ub.getphone() */%>" disabled>
	            </div>
	            <div class="form-group">
	            	<label class ="font-weight-bold">Email Address<span style="color:red;">*</span></label>
	            	<input data-parsley-type="email" id="email" name="email"class="form-control" autocomplete="off" required placeholder="Email" value="<%=/* ub.getemail() */ %>" disabled>
	            </div>     		  		            
	         </div>
	     </div>                                  	      		                                                   
	</form> --%>
		
	<!-- / middle content -->
</section>

<!-- footer -->
	  <jsp:include page="footer.jsp"></jsp:include>
<!-- / footer -->

</section>
<!--main content end-->

<!-- Script -->
<jsp:include page="script.jsp"></jsp:include>
<!-- / Script -->

<!-- calendar -->
<script type="text/javascript" src="js/monthly.js"></script>

<!-- //calendar -->
</body>
</html>