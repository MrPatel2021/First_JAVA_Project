<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html lang="en">

<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
<!-- Header start -->
  <jsp:include page="header.jsp"></jsp:include>
 <!-- Header End -->
    
  <!-- Page Title start -->
<div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">User Login</h1>
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
      <form  action="<%=application.getContextPath() %>/UserLoginController" data-parsley-validate="true" method="post">
        <div class="userccount">
          <div class="socialLogin">
          <h5>User Login</h5>
          <!-- login form -->
          <div class="formpanel">
            <div class="formrow">
                <input data-parsley-type="email" name="email" class="form-control" placeholder="Email"  required="required">
              </div>            
            <div class="formrow">
              <input type="password" name="password" id="password" class="form-control" placeholder="Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
            </div>
            <div class="formrow">
                <input type="checkbox" onclick="myFunction()">Show Password
            </div>
            <input type="submit" class="btn btn-large btn-primary" name="action" value="Login">
          </div>
          <!-- login form  end--> 
          
          <!-- sign up form -->
          <div class="newuser"><i class="fa fa-user" aria-hidden="true"></i> New User?</div>
          <a href="user.jsp" style="color:#666666;height:30px;width:200px;">Register Here</a>
          <a href="forgotpassword_user.jsp" style="color:#666666;height:30px;width:200px;">Forget Password</a>
          <!-- sign up form end--> 
          
        </div>
        </div>
        </form>
      </div>
    </div>
  </div>
</div>


  <!-- footer start -->
 <jsp:include page="footer.jsp"></jsp:include>
 <!-- footer end -->
<jsp:include page="script.jsp"></jsp:include>
</div>
</body>

<script type="text/javascript">
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>

</html>
    