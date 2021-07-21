<%@page import="com.dao.add_sub_admin_dao"%>
<%@page import="com.bean.add_sub_admin_bean"%>

<html>
<%
	add_sub_admin_bean ab = add_sub_admin_dao.getSubAdminById(Integer.parseInt(request.getParameter("aid")));
%>
<head>
<title>Happiness At Door</title>
<style type="text/css">
.main{
background-color: pink;
color: blue;
font-size: 20px;
margin-top: 50px;
margin-left: 600px;
}
.tx{
height: 30px;
}
</style>
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
</head>
<body class="main">
<h2>Edit Admin Data</h2>

<form action="AdminRegController" class="bor" data-parsley-validate="true" method="post" enctype="multipart/form-data" style="border: 10px solid grey;width: 330px;padding: 10px;">
                                <input type="hidden" name="id" value="<%=ab.getaid()%>">
                                 <label class="tx">First Name</label>
                                    <input type="text" class="tx" name="updatefname" autofocus value="<%=ab.getfname()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Firstname" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change"><br><br>
                                
                                
                                <label class="tx">Last Name</label>
                                    <input type="text" class="tx" name="updatelname" value="<%=ab.getlname()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Lastname" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change"><br><br>
                                
                                <label  class="tx">Email address</label>
                                    <input type="email" class="tx" name="updateemail" value="<%=ab.getemail()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Email" required="required" data-parsley-pattern="^[a-z0-9@.]+$"><br><br>
                                
                                <label class="tx">Mobile Number</label>
                                    <input type="text"  class="tx" name="updatephone_no" value="<%=ab.getphone()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Mobile Number"><br><br>
                                
                                <label class="tx">Address</label>
                                    <%-- <input type="text" class="tx" name="updateaddress" value="<%=ab.getaddress()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Address"> --%>
                                   	<textarea rows="4" class="tx" name="updateaddress" class="form-control" id="exampleInputEmail1" placeholder="Enter Address" style="height: 100px;width: 200px;">
                                   		<%=ab.getaddress()%>
                                   	</textarea><br><br>
                                
                                <label class="tx">Area</label>
                                    <input type="text" class="tx" name="updatearea" value="<%=ab.getarea()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Area" required="required"><br><br>
                               
                               <label class="tx">City</label>
                                    <input type="text"  class="tx" name="updatecity" value="<%=ab.getcity()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter City" required="required"><br><br>
                              
                               <label class="tx">State</label>
                                    <input type="text" class="tx" name="updatestate" value="<%=ab.getstate()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter State" required="required"><br><br>
                                
							   <label class="tx">Country</label>
                                    <input type="text" class="tx" name="updatecountry" value="<%=ab.getcountry()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Country" required="required"><br><br>
                               
                                <% if(ab.getgender() ==1) {  %>
                                	 <div class="form-group">
                                		<label class="tx"> Gender </label>
										<input type="radio" class="tx" value="1" checked="checked" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;" required=" "> Male 
										<input type="radio" class="tx" value="2" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;"> Female<br><br>
                                	</div>
                                	
                               <% }else { %>
                            	   <div class="form-group">
                                		<label class="tx"> Gender </label>
										<input type="radio" class="tx" value="1" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;" required=" "> Male
										<input type="radio" class="tx" value="2" checked="checked" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;"> Female<br><br>
                                	</div>
                               <% } %>
                                                               
                                <label class="tx">File input</label>
                                    <input type="file" class="tx" name="updateprofile" value="<%=ab.getprofile()%>" required="required" id="exampleInputFile"><br><br>
                                
                                <label  class="tx" for="exampleInputPassword1">Password</label>
                                    <input type="password" class="tx" name="updatepassword" value="<%=ab.getpassword()%>" class="form-control" id="password" placeholder="Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20"><br><br>
                                 
                                <label class="tx" for="exampleInputPassword1">Confirm Password</label>
                                    <input type="password" class="tx" name="updateconfirm_password" value="<%=ab.getconpassword()%>" class="form-control" id="con_password" placeholder="Confirm Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20"><br><br>
                                 
                                <label class="tx">
                                        <input type="checkbox" class="tx" onclick="myFunction()"> Show Password
                                </label><br><br>
                                
                                <div class="tx">
                                <button type="submit" name="action" value="UPDATE" class="btn btn-info" style="color: red;background-color: skyblue;font-weight: bold;width: 170px;height:30px;text-align: center;">Submit</button><br><br>
                            	
                            </form>
</body>
</html>


<%-- <%@page import="com.dao.add_sub_admin_dao"%>
<%@page import="com.bean.add_sub_admin_bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

// Manish Mori....

<%
	//First Way.
	add_sub_admin_bean ab =  new add_sub_admin_dao().getadminbyid(Integer.parseInt(request.getParameter("aid")));
	//Second way.
	//add_sub_admin_bean ab = add_sub_admin_dao.getadminbyid(Integer.parseInt(request.getParameter("aid")));
%> 



<% True
	// normal way....
	//add_sub_admin_bean ab = (add_sub_admin_bean) request.getAttribute("id"); // id in normail way....
	
	add_sub_admin_bean ab = add_sub_admin_dao.getSubAdminById(Integer.parseInt(request.getParameter("aid")));
%>

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
                            Edit Admin Details
                        </header>
                        <div class="panel-body">
                            <div class="position-center">
                                <form action="AdminRegController" data-parsley-validate="true" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="id" value="<%=ab.getaid()%>">
                                 <div class="form-group">
                                    <label>First Name</label>
                                    <input type="text" name="updatefname" autofocus value="<%=ab.getfname()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Firstname" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
                                </div>
                                
                                <div class="form-group">
                                    <label>Last Name</label>
                                    <input type="text" name="updatelname" value="<%=ab.getlname()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Lastname" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
                                </div>
                                
                                <div class="form-group">
                                    <label>Email address</label>
                                    <input type="email" name="updateemail" value="<%=ab.getemail()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Email" required="required" data-parsley-pattern="^[a-z0-9@.]+$">
                                </div>
                                
                                <div class="form-group">
                                    <label>Mobile Number</label>
                                    <input type="text" name="updatephone_no" value="<%=ab.getphone()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Mobile Number">
                                </div>
                                
                                <div class="form-group">
                                    <label>Address</label>
                                    <input type="text" name="updateaddress" value="<%=ab.getaddress()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Address">
                                   	<textarea rows="4" name="updateaddress" class="form-control" id="exampleInputEmail1" placeholder="Enter Address" required="required" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10">
                                   		<%=ab.getaddress()%>
                                   	</textarea>
                                </div>
                                
                                <div class="form-group">
                                    <label>Area</label>
                                    <input type="text" name="updatearea" value="<%=ab.getarea()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Area" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>City</label>
                                    <input type="text" name="updatecity" value="<%=ab.getcity()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter City" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>State</label>
                                    <input type="text" name="updatestate" value="<%=ab.getstate()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter State" required="required">
                                </div>
                                
                                <div class="form-group">
                                    <label>Country</label>
                                    <input type="text" name="updatecountry" value="<%=ab.getcountry()%>" class="form-control" id="exampleInputEmail1" placeholder="Enter Country" required="required">
                                </div>
                                
                                <% if(ab.getgender() ==1) {  %>
                                	 <div class="form-group">
                                		<label> Gender </label>
										<input type="radio" value="1" checked="checked" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;" required=" "> Male 
										<input type="radio" value="2" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;"> Female
                                	</div>
                                	
                               <% }else { %>
                            	   <div class="form-group">
                                		<label> Gender </label>
										<input type="radio" value="1" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;" required=" "> Male
										<input type="radio" value="2" checked="checked" name="updategender" id="exampleInputEmail1" style="margin-left: 20px;"> Female
                                	</div>
                               <% } %>
                                                               
                                <div class="form-group">
                                    <label>File input</label>
                                    <input type="file" name="updateprofile" value="<%=ab.getprofile()%>" required="required" id="exampleInputFile">
                                </div> 
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input type="password" name="updatepassword" value="<%=ab.getpassword()%>" class="form-control" id="password" placeholder="Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
                                </div>
                                
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Confirm Password</label>
                                    <input type="password" name="updateconfirm_password" value="<%=ab.getconpassword()%>" class="form-control" id="con_password" placeholder="Confirm Password" required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
                                </div>
                                
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" onclick="myFunction()"> Show Password
                                    </label>
                                </div>
                                
                                <div>
                                <button type="submit" name="action" value="UPDATE" class="btn btn-info">Submit</button>
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
</html> --%>