<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Header start -->
  <div class="container">
  <jsp:include page="header_worker.jsp"></jsp:include>
 <!-- Header End -->

<div class="pageTitle">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-sm-6">
        <h1 class="page-heading">Complaint</h1>
      </div>
      <div class="col-md-6 col-sm-6">
        <div class="breadCrumb"><a href=""></div>
      </div>
    </div>
  </div>
</div>


<div class="listpgWraper">
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
      <form  action="ComplaintController" data-parsley-validate="true" method="post">
          <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Topic :</h5>
            
                <input type="text" name="topic_name" autofocus class="form-control" placeholder="Enter Topic Name "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
              </div>
			</div>
		</div>
		
		
		<div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
              <div class="formrow">
              <h5>Message :</h5>
            
                <input type="text" name="message" autofocus class="form-control" placeholder="Enter Message "  required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
              </div>
			</div>
		</div>
		
		 <div class="tab-content">
            <div id="candidate" class="formpanel tab-pane fade in active">
         
		 <div class="formrow">
		        <input type="submit" name="action" class="btn btn-large btn-primary" value="Submit">
         </div>
    </div>
</div>
       
</form>
</div>
</div>
</div>
</div>
</div>


              

<!-- footer start -->
 <jsp:include page="footer.jsp"></jsp:include>
 <!-- footer end -->
<jsp:include page="script.jsp"></jsp:include>



</body>
</html>