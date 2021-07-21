<%@page import="java.util.List"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>
<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao"%>
<!DOCTYPE html>
<html lang="en">
<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<head>
<jsp:include page="head.jsp"></jsp:include>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Happiness At Door</title>
</head>
<body>
<!-- Header start -->
<jsp:include page="header_worker.jsp"></jsp:include>
<!-- Header End -->

<!-- Slider Start -->
<jsp:include page="slider.jsp"></jsp:include>
 <!-- Slider End -->

<%-- <!--Search Bar start-->
<div class="searchbar searchblack">
  <div class="container">
    <div class="row">
      <!-- <div class="col-md-5 col-sm-12">
        <input type="text" class="form-control" placeholder="Enter Skills of worker" />
      </div> -->
      <div class="col-md-6 col-sm-6">
        <select class="form-control">
          <option value="select worker category">Select Worker Categories</option>
          <%          	
		        	addworkercategorydao awcb = new addworkercategorydao();
		    		List<add_category_bean> list1 = awcb.getAllWorkerCategory();
		          	for(add_category_bean acb : list1)
		          	{
		          	
		   %>
		   		<option value="<%=acb.getCategoryid()%>"><%=acb.getCategoryname() %></option>
                                     
		          <%		          
		          	}	          
		  		  %>
                
           </select>
      </div>
      <div class="col-md-4 col-sm-4">
        <select class="form-control">
         <option value="Please Select Area"> Select Area </option>
                 <%
		          	areadao ab = new areadao();
		    		List<areabean> list2 = ab.getAllArea();
		          	
		          	for(areabean area : list2)
		          	{
		          		
          		%>
        		<option value="<%=area.getAreaid()%>"><%=area.getAreaname() %></option>
		        <%
		       		}
		       	%>
		       	
         </select>
      </div>
      
      <div class="col-md-2 col-sm-2">
        <input type="submit" class="btn" value="Search Worker">
      </div>
    </div>
  </div>
</div>
<!-- Search End -->  --%>


<!-- How it Works start -->
<div class="section howitwrap">
  <div class="container"> 
    <!-- title start -->
    <div class="titleTop">
      <div class="subtitle">Here You Can See</div>
      <h3>How It <span>Works?</span></h3>
    </div>
    <!-- title end -->
    <ul class="howlist row">
      <!--step 1-->
      <li class="col-md-4 col-sm-4">
        <div class="iconcircle"><i class="fa fa-user" aria-hidden="true"></i></div>
        <h4>Login</h4>
        <p>First user must do registration.Then after user do login.If user do not login then he/she can not book the worker.</p>
      </li>
      <!--step 1 end--> 
      
      <!--step 2-->
      <li class="col-md-4 col-sm-4">
        <div class="iconcircle"><i class="fa fa-black-tie" aria-hidden="true"></i></div>
        <h4>Search Worker</h4>
        <p>If user do registration then user search worker but can not book worker.</p>
      </li>
      <!--step 2 end--> 
      
      <!--step 3-->
      <li class="col-md-4 col-sm-4">
        <div class="iconcircle"><i class="fa fa-file-text" aria-hidden="true"></i></div>
        <h4>Book Worker</h4>
        <p>If user do login then and then he/she book worker.</p>
      </li>
      <!--step 3 end-->
    </ul>
  </div>
</div>
<!-- How it Works Ends --> 

<!-- Featured Jobs start -->
<div class="section greybg">
  <div class="container"> 
    <!-- title start -->
    <div class="titleTop">
      <div class="subtitle">Here You Can See</div>
      <h3>Worker <span>Category</span></h3>
    </div>
    <!-- title end --> 
    
   <!--Featured Job start-->
    <ul class="jobslist row">
      <!--Job start-->
    
        <ul class="jobslist row">
         <%          	
		        addworkercategorydao awc = new addworkercategorydao();
		    	List<add_category_bean> list = awc.getAllWorkerCategory();
		          	
		       	for(add_category_bean acb : list)
		       	{
		          	
		     %>  
	  <li class="col-md-6">
        <div class="jobint">
          <div class="row">
            <div class="col-md-2 col-sm-2"><img src="resources/images/pic/img001.jpg" alt="Job Name" /></div>
            <div class="col-md-7 col-sm-7">
            
            <form action="<%=application.getContextPath()%>/worker_reg_controller" method="post">
               			<button type="submit" name="action" value="getcategorybyworkerid" style="background-color: white;border:none;height: 50px;width: 200px;font-weight: bold;font-size: 25px">
				 	       <a class="dropdown-item" value="<%=acb.getCategoryid()%>" >
				 	       <input type="hidden" name="categoryid" value="<%=acb.getCategoryid()%>">
				            <%=acb.getCategoryname() %></a>
			            </button>
			 </form>		
			 
            <%-- <h2><a href="<%%>"><%out.println(acb.getCategoryname());%></a></h2>                    
		         
          
            </div>
            <div class="col-md-3 col-sm-3"><a href="index.jsp" class="applybtn">Book Now</a></div> --%>
          </div> 
        </div>
      </li>
        <%		          
		   	}		          
		%>
    </ul>
    
      <!--Job end-->
      
    </ul>
    <!--Featured Job end--> 
     
  </div>
</div>
<!-- Featured Jobs ends --> 
     
  </div>
</div>
<!-- Featured Jobs ends --> 


<!--Footer-->
	<jsp:include page="footer.jsp"></jsp:include>
<!--  footer end-->

<!-- Bootstrap's JavaScript --> 
	<jsp:include page="script.jsp"></jsp:include>
</body>

<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:17 GMT -->
</html>