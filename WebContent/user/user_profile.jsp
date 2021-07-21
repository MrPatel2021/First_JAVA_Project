<%@page import="com.bean.user_reg_bean" %>
<%@page import="com.dao.user_reg_dao" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%
user_reg_bean ub = user_reg_dao.getuserdatabyid((Integer) session.getAttribute("id"));
%>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="head.jsp"></jsp:include>
</head>
<jsp:include page="head.jsp"></jsp:include>
<!-- Change Password -->
<div id="password_modal" class="modal fade" role="dialog" style="margin-top:150px;">
	<div class="modal-dialog modal-lg">
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header bg-danger">
				<h4 class="text-white" style="font-size:2vw ! important;">Change Password</h4>
				<button type="button" class="close" data-dismiss="modal"><b class="text-white">&times;</b></button>
			</div>
			
			<div class="modal-body">
				<form method="post" action="<%=application.getContextPath()%>/EditProfileUserController" data-parsley-validate="true">
					<div class="row">
						<div class="col-sm-12 col-md-6 col-lg-5">
							<h5 class="font-weight-bold ml-3 mt-3" style="font-size:1.5vw !important">Your new password must be:</h5>
							<ul class="ml-4 pt-2" type="disc" style="font-size:1vw !important">
								<li type="disc">Be at least 6 characters in length</li> 
								<li type="disc">Not be same as your current password</li>
							</ul>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-6">
							<div class="form-group">
							<%
							 String pwd1 = ub.getpassword();
							 String pwd2 =ub.getconpassword();									
							%>
								<div class="adminpwd">
									<label>Please enter your current password below : </label><br><br>
									<input type="password" autofocus class="form-control adminpwd1" required placeholder="Password" name="adminpwd1" id="adminpwd1" data-parsley-minlength="6"  data-parsley-pattern="^[a-zA-Z0-9!@#$%&*]+$" data-parsley-error-message=""><br>
									<input type="hidden" type="password" class="form-control systempwd1" required placeholder="Password" name="systempwd1" id="systempwd1" value="<%=pwd1%>">
									<input type="checkbox" onclick="myFunctionForPwd()" class="font-weight-bold">Show Password<br>
									<input type="button" class="btn btn-danger float-right mb-2" name="action" value="Change Password" id="changePassword"  onclick="passwordFun();">									                   
								</div>
																
								<div class="systempwd" style="display:none;">	
									<div class="form-group">
										<label for="" class="font-weight-bold">Current Password</label>
										<%
										 String pwd3 = ub.getpassword();
										 String pwd4 =ub.getconpassword();									
										%>
										<input type="password" class="form-control" required placeholder="Password" name="currentpassword" id="currentpassword" data-parsley-pattern="^[a-zA-Z0-9!@#$%&*]+$" data-parsley-minlength="6" value="<%=pwd3%>"><br>
										<label for="" class="font-weight-bold">New Password</label>							
										<input type="password" class="form-control" required placeholder="New Password" name="updatenewpwd" id="updatenewpwd" data-parsley-pattern="^[a-zA-Z0-9!@#$%&*]+$" data-parsley-minlength="6" onchange="myPassword()"><br>											
										<label for="" class="font-weight-bold">Confirm Password</label>
										<input type="password" class="form-control" required placeholder="Confirm Password" name="updatenewconfirmpwd" id="updatenewconfirmpwd" data-parsley-pattern="^[a-zA-Z0-9!@#$%&*]+$" data-parsley-minlength="6" onchange="myPassword()"><br>
										<input type="checkbox" onclick="myFunction()" class="font-weight-bold">Show Password<br>
										<span class="font_clr" id="error_pwd_msg"></span><br>
										<span id="error" style="color:red !important"></span><br>
									</div>
									<div class="modal-footer">
										<input type="hidden" name="user_id" value="<%=ub.getuid()%>">
										<input type="submit" class="btn btn-danger" name="action" value="Change Password" id="changePassword1">
									</div>																	
								</div>
							</div>
						</div>
						<div class="col-lg-1"></div>
					</div>												
				</form>
			</div>
		</div>
	</div>
</div>
<!-- Chnage Photo -->
<div id="edit_photo" class="modal fade" role="dialog" style="margin-top:150px;">
	<div class="modal-dialog modal-md">
		<!-- Modal content-->
		<div class="modal-content">
			<form method="post" action="<%=application.getContextPath()%>/EditProfileUserController" data-parsley-validate="true" enctype="multipart/form-data">
			<div class="modal-header mb-3 bg-danger">
				<h4 class="font-weight-bold" style="font-size:2vw ! important;">Change Photo</h4>
				<button type="button" class="close" data-dismiss="modal">&times;</button>
			</div>			
			<div class="modal-body">
		           <label class ="font-weight-bold">Photo<span style="color:red;">*</span></label><br>
					<input type="file" name="photo" id="photo" required data-parsley-min-file-size="50" data-parsley-max-file-size="250" value="<%=ub.getprofile()  %>"><br>
		     </div>	
			 <div class="modal-footer">
		        <input type="hidden" name="user_id" value="<%=ub.getuid()%>">
		          <button data-dismiss="modal" class="btn btn-default" type="button"  href="#">Cancel</button>		          
				<input type="submit" name="action" class="btn btn-danger" value="Change Photo">			
		     </div>			
			</form>
		</div>
	</div>
</div>
<body>
<script type="text/javascript">
	function myPassword()
	{
		var oldpwd = document.getElementById('currentpassword').value;
		var newpwd = document.getElementById('updatenewpwd').value;
		var confirmpwd = document.getElementById('updatenewconfirmpwd').value;
	}		
	function myFunction() 
	{			
		  var x = document.getElementById("currentpassword");
		  var x1 = document.getElementById("updatenewpwd");
		  var x2 = document.getElementById("updatenewconfirmpwd");
		  if ((x.type === "password") ||  (x1.type === "password") ||  (x2.type === "password"))
		  {
		      x.type = "text";
			  x1.type = "text";
			  x2.type="text";
		  } 
		  else 
		  {
			    x.type = "password";
			  	x1.type = "password";
			  	x2.type = "password";
		  }
	}
	function passwordFun()
	{
		var adminpwd = $('#adminpwd1').val();			
		var systempwd = $('#systempwd1').val();			
		if(adminpwd == systempwd)
		{						
			$(".systempwd").show();	
			$(".adminpwd").hide();	
			alert("Correct Password..!"); 	
		}		
		else
		{
			alert("PLease Enter Correct Password");
		}
	}
	jQuery(document).ready(function($){
	  	$('#changePassword1').click(function(event) 
	  	{				  		
	  		var pwd = $('#currentpassword').val();
	  		var upassword1 = $('#updatenewpwd').val();
	  		var uconfirmPassword1 = $('#updatenewconfirmpwd').val();		  		
            if(upassword1=="" && uconfirmPassword1=="")
            {
            	alert("*Please fill Password");
            	event.preventDefault();
           	}	          
            else if( (pwd == upassword1) && (pwd == uconfirmPassword1) )
            {
            	alert("*Please enter different password");
            	event.preventDefault();
            }
            else if (upassword1 != uconfirmPassword1) 
            {
            	alert("*Enter Confirm Password Same as New Password");
            	event.preventDefault();
            }
            else
           	{
            	alert("*Password Updated Successfully ..!");	           	   
           	}	     
	  	});
	  });		 
	
	 function myFunctionForPwd() 
	 {
		  var x = document.getElementById("adminpwd1");
		  if (x.type === "password") 
		  {
		    x.type = "text";
		  }
		  else 
		  {
		    x.type = "password";
		  }
		}
</script>
<!-- Header start -->
<jsp:include page="header_user.jsp"></jsp:include>
<!-- Header End -->


<!-- Page Title start -->

  <div class="container"> 
    <!-- Blog start -->
    <div class="row">
    <div class="col-lg-2"></div>
      <div class="col-md-8"> 
        <!-- Blog List start -->
        <div class="blogWraper">
        
                 
<%--         <form action="<%=application.getContextPath()%>/user_reg_controller" method="post"> --%>
          <form>         	
          <ul class="blogList">
              
            <li>
        
              <div class="row">
                <div class="col-md-5"> 
                  <div class=""><img src="../uploaded_images/<%=ub.getprofile() %>" alt="Blog Title" width="200px" height="200px">               
                  </div>
                </div>                
                <div class="col-md-7">               
                  <div class="post-header">
                    <h3><%= ub.getfname() %>
                    <%= ub.getlname()%></h3>
                    <h6><div class="postmeta">Mobile No. : <%= ub.getphone()%></div>
                    <div class="postmeta">Email : <%= ub.getemail()%></div>
                    <span>Address :<%= ub.getaddress()%> </a></div></span></h6>
                 </div>
                  <span><div class="mt-button-text mt-style-button41"> <a href="editprofile_user.jsp?id="<%=ub.getuid()%> class="mt-style-button normal">Edit Profile</a></div></span>
                  <div class=" col-md-2 ml-5 " style="float: left;" >
	              		<input type="button" class="btn btn-sm btn-info" style="color: black !important;" data-toggle="modal" data-target="#edit_photo" value="Change Photo">				
	              </div>
	    
                  <div class="ml-5 " style="float: left;" >
	              		<input type="button" class="btn btn-sm btn-info" style="color: black !important;" data-toggle="modal" data-target="#password_modal" value="Change Password">				
	              </div>
	         </div>   
            </li>
          </ul>          
       </form> 	 
      </div>
     </div>
     <div class="col-lg-2"></div>
     </div>
     </div>     
  </div>  
    <!--Footer-->
	<jsp:include page="footer.jsp"></jsp:include>
<!--  footer end-->

<!-- Bootstrap's JavaScript --> 
	<jsp:include page="script.jsp"></jsp:include>
<!-- Bootstrap's JavaScript --> 

<script src="js/jquery-2.1.4.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 

<!-- Owl carousel --> 
<script src="js/owl.carousel.js"></script> 

<!-- Custom js --> 
<script src="js/script.js"></script>
</body>

<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:07:07 GMT -->
</html>