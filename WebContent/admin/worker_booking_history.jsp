<%@page import="com.bean.book_worker_bean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.book_worker_dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

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
		
		<div> <!-- class="w3layouts-main" -->
<div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
    WORKER BOOKING HISTORY
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> Worker Booking History ID </th>
            <th> Worker ID </th>
			<th> Worker First Name </th>
			<th> Worker Last Name </th>
			<th> Booking Date </th>
			<th> Booking Time </th>
			<th> Problem </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
       <%
       		book_worker_dao wd = new book_worker_dao();
       		List<book_worker_bean> list = wd.getAlldata();
       		for(book_worker_bean wb : list){
		%>
        <tr>
        	<td><% out.println(wb.getbid()); %></td>
        	<td><% out.println(wb.getwid()); %></td>
        	<td><% out.println(wb.getfname()); %></td>
        	<td><% out.println(wb.getlname()); %></td>
        	<td><% out.println(wb.getbdate()); %></td>
        	<td><% out.println(wb.getbtime()); %></td>
        	<td><% out.println(wb.getproblem()); %></td>
        	
        	<td>
          		<form method="post" action="<%=application.getContextPath()%>/book_worker_controller">
          		<input type="hidden" name="id" value="<%=wb.getbid()%>">
          		<input type="submit" name="action" value="DELETE" class="btn-danger">
          		</form>
          	</td>
        	
        </tr>
        
        <%
       		}
        %>
        </tbody>
      </table>
    </div>
</div>
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

<!-- //calendar -->
</body>
</html>