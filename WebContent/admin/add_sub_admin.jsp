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
		
		<div class="row">
            <div class="col-lg-10 col-lg-offset-1">
             <section class="panel">
                        <header class="panel-heading">
                            Sign Up
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="<%=application.getContextPath()%>/AdminRegController" data-parsley-validate="true" method="post" enctype="multipart/form-data">
                                
                                <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="fname" autofocus class="form-control" id="exampleInputEmail1" placeholder="Enter Firstname"required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
                                </div>
                                
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="lname" class="form-control" id="exampleInputEmail1" placeholder="Enter Lastname"required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
                                </div>
                                
                                <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" name="email" class="form-control" id="exampleInputEmail1" placeholder="Enter Email" required="required" data-parsley-pattern="^[a-z0-9@.]+$">
                                </div>
                                
                                <div class="form-group">
                                    <label>Mobile Number</label>
                                    <input type="text" name="phone_no" class="form-control" id="exampleInputEmail1" placeholder="Enter Mobile Number" required="required" data-parsley-minlength="10">
                                </div>
                                
                                <div class="form-group">
                                    <label>Address</label>
                                    <textarea rows="4" name="address" class="form-control" id="exampleInputEmail1" placeholder="Enter Address" required="required" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10"></textarea>
                                </div>
                                
                                <div class="form-group">
                                    <label>Area</label>
                                    <input type="text" name="admin_area" class="form-control" id="exampleInputEmail1" placeholder="Enter Area" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="city" class="form-control" id="exampleInputEmail1" placeholder="Enter City" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>State</label>
                                    <input type="text" name="state" class="form-control" id="exampleInputEmail1" placeholder="Enter State" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>Country</label>
                                    <input type="text" name="country" class="form-control" id="exampleInputEmail1" placeholder="Enter Country" required="required">
                                </div>
                                
                                <div class="form-group">
                                	<label> Gender </label>
										<input type="radio"  value="1" name="gender" id="exampleInputEmail1" style="margin-left: 20px;"  required=""> Male 
										<input type="radio"  value="2" name="gender" id="exampleInputEmail1" style="margin-left: 20px;"> Female
                                </div>
                                
                                <div class="form-group">
                                    <label>File input</label>
                                    <input type="file"  name="profile" required="required" id="exampleInputFile">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="password" class="form-control" id="password" placeholder="Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Confirm Password</label>
                                    <input type="password" name="confirm_password" class="form-control" id="con_password" placeholder="Confirm Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
                                </div>
                                
                                <div class="checkbox">
                                    <label>
                                    	 <input type="checkbox" onclick="myFunction()">Show Password
                                    </label>
                                </div>
                                
                                <div>
                                <button type="submit" name="action" value="Register" class="btn btn-info">Submit</button>
                            	</div>
                            	
                            </form>
                            </div>

                        </div>
                    </section>
                </div>
        </div>		
		
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

<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("password");
	  var y = document.getElementById("con_password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	  
	  if (y.type === "con_password") {
		    y.type = "text";
		  } else {
		    y.type = "con_password";
		  }
	}
</script>

<!-- //calendar -->

</body>
</html>