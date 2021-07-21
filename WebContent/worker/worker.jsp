<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>

<%@page import="java.util.List"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Happiness At Door</title>
</head>
<jsp:include page="head.jsp"></jsp:include>

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
        <h1 class="page-heading">Worker Registration</h1>
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
      <form  action="<%=application.getContextPath()%>/worker_reg_controller" data-parsley-validate="true" method="post" enctype="multipart/form-data">
          <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
                <input type="text" name="worker_fname" autofocus class="form-control" placeholder="Worker First name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
              </div>
              <div class="formrow">
                <input type="text" name="worker_lname" autofocus class="form-control" placeholder="Worker Last name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
              </div>
              
              <div class="formrow">
                <input data-parsley-type="email" name="email" class="form-control" placeholder="Email"  required="required" data-parsley-pattern="^[a-z0-9@.]+$">
              </div>
    		  
              <div class="formrow">
                <input type="text"  name="phone_number" class="form-control" placeholder="Phone Number"  required="required" data-parsley-minlength="10">
              </div>
              
              <div class="formrow">
                <input type="text"  name="adharcard" class="form-control" placeholder="Adhar Card"  required="required" data-parsley-minlength="12" data-parsley-maxlength="12">
              </div>
              
               
              <div class="formrow">
              <select class="form-control" id="workercategory" name="workercategory" required="required">
                <option value="Please Select Worker Category">|- SELECT WORKER CATEGORY -|</option>
                 <%
                 addworkercategorydao awcb = new addworkercategorydao();
          		 List<add_category_bean> list = awcb.getAllWorkerCategory();
               	
               	for(add_category_bean acb : list)
               	{
               		
          		%>
        		<option value="<%=acb.getCategoryid()%>"><%=acb.getCategoryname() %></option>
		        <%
		       		}
		       	%>
		       	  </select>
               </div>
              
              
              <div class="formrow">
				<textarea id="address" class="form-control" name="address" placeholder="Address" required="required" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10"></textarea>
              </div>
              
             <div class="formrow">
                <select class="form-control" id="selectarea" name="selectarea" required="required">
                <option value="Please Select Area">|- SELECT AREA -|</option>
                 <%
		          	areadao ab = new areadao();
		    		List<areabean> list1 = ab.getAllArea();
		          	
		          	for(areabean area : list1)
		          	{
		          		
          		%>
        		<option value="<%=area.getAreaid()%>"><%=area.getAreaname() %></option>
		        <%
		       		}
		       	%>
		       	  </select>
              </div> 
              <div class="formrow">
                <input  name="city" class="form-control" placeholder="City"  required="required" value="Ahmedabad">
              </div>
              <div class="formrow">
                <input  name="state" class="form-control" placeholder="State"  required="required" value="Gujarat">
              </div>
              
              
              <div class="formrow form-control">
              <p>
               Gender: Male  <input type="radio" name="gender" id="contactMethodEmail" value="0"  required="">
               		   Female <input type="radio" name="gender" id="contactMethodEmail" value="1" >
               </p>
               </div>
               
               <div class="formrow form-control">
              <input type="file" name="profile" required="required">
   				</div>
              
              <div class="formrow">
                <input type="password" name="password" id="password" class="form-control" placeholder="Password"  required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
              </div>
              <div class="formrow">
                <input type="password" name="conpass" id="con_password" class="form-control" placeholder="Confirm Password"  required="required" data-parsley-minlength="8" data-parsley-maxlength="20">
              </div>
              <div class="formrow">
                <input type="checkbox" onclick="myFunction()">Show Password
                </div>
              <input type="submit" class="btn" name="action" value="Register">
            </div>
            </div>
          
          <div class="newuser"><i class="fa fa-user" aria-hidden="true"></i> Already a Member? <a href="#">Login Here</a></div> 
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

</html>