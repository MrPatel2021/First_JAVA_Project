<%@page import="com.bean.worker_reg_bean" %>
<%@page import="com.dao.worker_reg_dao" %>
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


<!-- Page Title start -->

  <div class="container"> 
    <!-- Blog start -->
    <div class="row">
    <div class="col-lg-2"></div>
      <div class="col-md-8"> 
        <!-- Blog List start -->
        <div class="blogWraper">
        
         		<%
                 		worker_reg_dao pd= new worker_reg_dao();
              
  	              		List<worker_reg_bean> list = pd.getWorkerByDriverID();
      	          		for(worker_reg_bean driver: list)
          	      		{
                 %>
                 
<%--         <form action="<%=application.getContextPath()%>/worker_reg_controller" method="post"> --%>
          <form>         	
          <ul class="blogList">
              
            <li>
        
              <div class="row">
                <div class="col-md-5"> 
                  <div class=""><img src="../uploaded_images/<%=driver.getprofile() %>" alt="Blog Title" width="200px" height="200px">               
                  </div>
                </div>                
                <div class="col-md-7">               
                  <div class="post-header">
                    
                    <h4><a href="#"><%out.println(driver.getfname()); %></a>
                    <a href="#"><%out.println(driver.getlname()); %></a></h4>
                    <div class="postmeta">Mobile No. : <%out.println(driver.getphone()); %> </div>
                    <div class="postmeta">Email : <%out.println(driver.getemail()); %> </div>
                    <span>Address : <a href="#."><%out.println(driver.getaddress()); %> </a></div></span>
                    
                 </div>
                  
                  <span><div class="mt-button-text mt-style-button41"> <a href="bookworker_form.jsp?id=<%= driver.getwid() %>" class="mt-style-button normal">Book Now</a> </div></span>
            	 
                  </div>
            </li>
           
          </ul>
          
       </form>
       	 <% 
            	} 
            %>
            
                  
        </div>
     </div>
     <div class="col-lg-2"></div>
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

    
