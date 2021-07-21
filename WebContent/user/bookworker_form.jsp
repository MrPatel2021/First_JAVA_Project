<%@page import="com.dao.worker_reg_dao"%>
<%@page import="com.bean.worker_reg_bean"%>
<%@ page import="com.dao.addworkercategorydao"%>
<%@ page import="com.bean.add_category_bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%
	/* worker_reg_bean wb = (worker_reg_bean) worker_reg_dao.getWorkerById(Integer.parseInt(request.getParameter("id"))); */
	worker_reg_bean wb = worker_reg_dao.getWorkerById(Integer.parseInt(request.getParameter("id")));
%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Happiness At Door</title>
</head>
<jsp:include page="head.jsp"></jsp:include>
<body>

<!-- Header start -->
  <jsp:include page="header_user.jsp"></jsp:include>
 <!-- Header End -->
 
<div>

<div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Book Worker</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        </div>
    </div>
  </div>
</div>

 
 <div class="">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
      <form  action="<%=application.getContextPath()%>/book_worker_controller" data-parsley-validate="true" method="post">
          <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
             
        	  <div class="formrow">
                <input type="text" name="worker_id" value="<%=wb.getwid() %>" class="form-control" placeholder="Worker ID" >
              </div>
              
              <div class="formrow">
                <input type="text" name="w_fname" value="<%=wb.getfname() %>" class="form-control" >
              </div>
              
              <div class="formrow">
                <input type="text" name="w_lname" value="<%=wb.getlname() %>" class="form-control" placeholder="Worker Last Name"  required="required" >
              </div>
              
              <div class="formrow">
                <input type="date" data-parsley-type="Booking Date" name="date" class="form-control" placeholder="Booking Date"  required="required">
              </div>
              
              <div class="col-md-15">
                
                  <select class=" formrow form-control" name="time">
                    <option>Time Slot</option>
                    <option>8 To 10 AM</option>
                    <option>10 To 12 AM</option>
                    <option>12 To 2 PM</option>
                    <option>2 To 4 PM</option>
                    <option>4 To 6 PM</option>
                    <option>6 To 8 PM</option>
                  </select>
                
              </div>
              
              
              <div class="formrow">
              <textarea id="address" class="form-control" name="problem" placeholder="Problem" required="required" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10"></textarea>
              
                </div>
    		               
              <input type="submit" class="btn" name="action" value="Book Worker">
              
              <div class="formrow"></div>
            </div>           
          </div>
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
</html>