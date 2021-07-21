<%@page import="com.bean.worker_reg_bean" %>
<%@page import="com.dao.worker_reg_dao" %>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="head.jsp"></jsp:include>
<%
 worker_reg_bean wb = worker_reg_dao.getuserdatabyid((Integer) session.getAttribute("id")); 
 int sid = Integer.parseInt(request.getParameter("sid"));
 %>
</head>
<body>
<!-- Header start -->
<jsp:include page="header_worker.jsp"></jsp:include>
<!-- Header End -->

  <div class="container"> 
    <!-- Blog start -->
    <div class="row">
    <div class="col-lg-2"></div>
      <div class="col-md-8"> 
        <!-- Blog List start -->
         <%                 		            
         		List<worker_reg_bean> list = worker_reg_dao.getWorkerdetailsById(sid);
         		for(worker_reg_bean barber: list)
  	      		{
         %>
        <div class="blogWraper">        
        
                 
<%--         <form action="<%=application.getContextPath()%>/worker_reg_controller" method="post"> --%>
          <form>         	
          <ul class="blogList">
              
            <li>
        
              <div class="row">
                <div class="col-md-5"> 
                  <div class=""><img src="../uploaded_images/<%=barber.getprofile() %>" alt="Blog Title" width="200px" height="200px">               
                  </div>
                </div>                
                <div class="col-md-7">               
                  <div class="post-header">
                    
                    <h4><a href="#"><%out.println(barber.getfname()); %></a>
                    <a href="#"><%out.println(barber.getlname()); %></a></h4>
                    <div class="postmeta">Mobile No. : <%out.println(barber.getphone()); %> </div>
                    <div class="postmeta">Email : <%out.println(barber.getemail()); %> </div>
                    <span>Address : <a href="#."><%out.println(barber.getaddress()); %> </a></div></span>
                    
                 </div>
                  
                  <span><div class="mt-button-text mt-style-button41"> <a href="bookworker_form.jsp?id=<%= barber.getwid() %>" class="mt-style-button normal">Book Now</a> </div></span>
            	 
                  </div>
                </li>
         </ul>
          
       </form>
        </div>
         	 <% 
            	} 
            %>
     </div>
     <div class="col-lg-2"></div>
     </div>
</div> 
<!--Footer-->
	<jsp:include page="footer.jsp"></jsp:include><jsp:include page="script.jsp"></jsp:include>
<!--  footer end-->  
<jsp:include page="script.jsp"></jsp:include>
</body>
</html>