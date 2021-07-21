<%@page import="com.dao.worker_reg_dao"%>
<%@page import="java.util.List"%>
<%@page import="com.bean.worker_reg_bean"%>
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
    VIEW WORKER
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> Worker ID </th>
			<th> First name </th>
			<th> Last name  </th>
			<th> Email ID </th>
			<th> Phone No. </th>
			<th> Adhar Card Number </th>
			<th> Worker Category Name </th>
			<th> Address </th>
			<th> Area </th>
			<th> City</th>
			<th> State</th>
			<th> Gender</th>
			<th> profile </th>
			<th> Password</th>
			<th> Conform Password</th>
			<!-- <th> Edit </th> -->
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
         </tr>
		 <%
		 	worker_reg_dao ud = new worker_reg_dao();
		 	List<worker_reg_bean> list = ud.getAlldata();
		 	for(worker_reg_bean ub : list)
			{
		%>
		
			<tr>
			<td><% out.println(ub.getwid());%></td>
			<td><% out.println(ub.getfname());%></td>
			<td><% out.println(ub.getlname()); %></td>
			<td><% out.println(ub.getemail()); %></td>
			<td><% out.println(ub.getphone()); %></td>
			<td><% out.println(ub.getadharcard()); %></td>
			<td><% out.println(ub.getworkercategory()); %></td>
			<td><% out.println(ub.getaddress()); %></td>
			<td><% out.println(ub.getarea()); %></td>
			<td><% out.println(ub.getcity()); %></td>
			<td><% out.println(ub.getstate()); %></td>
			<td><% out.println(ub.getgender()); %></td>
			<td><img src="../uploaded_images/<% out.println(ub.getprofile()); %>"height="60px" width="60px"></td>
			<td><% out.println(ub.getpassword()); %></td>
			<td><% out.println(ub.getconpassword()); %></td>
			<%-- <td>
				<form action="<%= application.getContextPath()%>/worker_reg_controller" method="post"> 
					<input type="hidden" name="wid" value="<%=ub.getwid()%>">
					<input type="submit" name="action" value="Edit" class="btn btn-primary">
				</form>
			</td> --%>
			
			<td>
				<form action="<%= application.getContextPath()%>/worker_reg_controller" method="post"> 
					<input type="hidden" name="wid" value="<%=ub.getwid()%>">
					<input type="submit" name="action" value="delete" class="btn-danger">
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