<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link rel="stylesheet" href="css/bootstrap.min.css" >
<!-- //bootstrap-css -->
<!-- Custom CSS -->
<link href="Resources/css/style.css" rel='stylesheet' type='text/css' />
<link href="Resources/css/style-responsive.css" rel="stylesheet"/>
<!-- font CSS -->

<!-- font-awesome icons -->
<link rel="stylesheet" href="Resources/css/font.css" type="text/css"/>
<link href="Resources/css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<script src="Resources/js/jquery2.0.3.min.js"></script>
</head>
<body>
<div class="log-w3">
<div class="w3layouts-main">
<form action="<%=application.getContextPath()%>/AdminLogin" data-parsley-validate="true" method="post">
	<h2>Log In</h2>
		
	<input type="email" class="ggg" placeholder="Enter Email Address" name="email" id="username" required="required" data-parsley-pattern="^[a-z0-9@.]+$">
	<input type="password" class="ggg" placeholder="Enter Password" name="password" id="password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
	<span><input type="checkbox" onclick="myFunction()" />Show Password</span>
	<h6><a href="for_pass.jsp"> Forgot Password?</a></h6>
	<div class="clearfix"></div>
	<input type="submit" name="action" value="SUBMIT" id="btn">
	<!-- <a href="index.jsp"><input type="submit" name="action" value="Login"></a> -->
</form>
		
</div>
</div>
<script src="Resources/js/bootstrap.js"></script>
<script src="Resources/js/jquery.dcjqaccordion.2.7.js"></script>
<script src="Resources/js/scripts.js"></script>
<script src="Resources/js/jquery.slimscroll.js"></script>
<script src="Resources/js/jquery.nicescroll.js"></script>
<!--[if lte IE 8]><script language="javascript" type="text/javascript" src="js/flot-chart/excanvas.min.js"></script><![endif]-->
<script src="Resources/js/jquery.scrollTo.js"></script>

<script type="text/javascript">
/* $(document).ready(function(){
	//alert("hj");
	$(document).on("click","#btn",function(){
		var name = $("#username").val();
		var pass = $("#password").val();
		if(name == "" || pass == "")
		{
			alert("User ID Or Password Error....!");
		}
	});
}) */
function myFunction() {
	  var x = document.getElementById("password");
	  if (x.type === "password") {
	    x.type = "text";
	  } else {
	    x.type = "password";
	  }
	}
</script>

</body>
</html>