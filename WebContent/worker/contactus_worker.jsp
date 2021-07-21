<%@page import="com.dao.worker_reg_dao"%>
<%@page import="com.bean.worker_reg_bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.bean.user_reg_bean" %>
<%@page import="com.dao.user_reg_dao" %>
<!DOCTYPE html>
<html lang="en">
<%
	worker_reg_bean ub = worker_reg_dao.getWorkerById((Integer) session.getAttribute("id"));
%>
<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
<!-- Header start -->
  <jsp:include page="header_worker.jsp"></jsp:include>
 <!-- Header End -->
 
  <div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Worker Contact Us</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="breadCrumb"><a href=""></a></div>
      </div>
    </div>
  </div>
</div>
<!-- Page Title End --> 

<!-- Contact us -->
<div class="inner-page">
  <div class="container">
    <div class="contact-wrap">
      <div class="row">
        <div class="col-md-12 column">
          <div class="title"> <span>We Are Here For Your Help</span>
            <h2>GET IN TOUCH FAST</h2>
            <p></p>
          </div>
        </div>
        
        <!-- Contact Info -->
        <div class="col-md-4 column">
          <div class="contact-now">
            <div class="contact"> <span><i class="fa fa-home"></i></span>
              <div class="information"> <strong>Address:</strong>
                <p>Unity Infoway , 704  Abhisek Complex, Sector - 11, Gandhinagar - 382010, Gujarat, India.</p>
              </div>
            </div>
            <!-- Contact Info -->
            <div class="contact"> <span><i class="fa fa-envelope"></i></span>
              <div class="information"> <strong>Email Address:</strong>
                <p>happinessatdoor2020@gmail.com</p>
              </div>
            </div>
            <!-- Contact Info -->
            <div class="contact"> <span><i class="fa fa-phone"></i></span>
              <div class="information"> <strong>Phone No:</strong>
                <p>+917965423333</p>
              </div>
            </div>
            <!-- Contact Info --> 
          </div>
          <!-- Contact Now --> 
        </div>
        
        <!-- Contact form -->
        <div class="col-md-8 column">
          <div class="contact-form">
            <div id="message"></div>
             <form method="post" action="<%=application.getContextPath()%>/ContactusController" class="animated wow " data-wow-delay=".5s"  data-parsley-validate refresh()>
              <div class="row">
                <div class="col-md-6">
                  <input name="name" type="text" autofocus class="form-control" id="name" placeholder="Full Name" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
                </div>
                <div class="col-md-6">
                  <input type="text" name="mobile_no" class="form-control" placeholder="Phone Number" required="required" data-parsley-minlength="10">
                </div>
                <div class="col-md-12">
                  <input data-parsley-type="email" name="email" type="text" id="email" class="form-control" placeholder="Email"  required="required">
                </div>
                <div class="col-md-12">
                  <textarea rows="4" name="message" class="form-control" id="message" placeholder="Details"></textarea>
                </div>
                <div class="col-md-12">
                  <input type="submit" name="action" class="button btn-primary" id ="submit" value="Submit Your Message!">
                </div>
              </div>
            </form>
          </div>
        </div>
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
</html>
  