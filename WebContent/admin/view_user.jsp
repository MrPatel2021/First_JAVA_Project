<%@page import="com.bean.user_reg_bean"%>
<%@page import="com.dao.user_reg_dao"%>
<%@page import="java.util.List"%>
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
    VIEW USER
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> User ID </th>
			<th> First name </th>
			<th> Last name  </th>
			<th> Email </th>
			<th> Phone No. </th>
			<th> Address </th>
			<th> Area </th>
			<th> City</th>
			<th> State</th>
			<th> Gender</th>
			<th> Profile </th>
			<th> Password</th>
			<th> Conform Password</th>
			<th> Edit </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
        </tr>
		<%
			user_reg_dao ud = new user_reg_dao();
			List<user_reg_bean> list =ud.getAlldata();
			for(user_reg_bean ub : list)
			{
		%>
		
			<tr>
			<td><% out.println(ub.getuid());%></td>
			<td><% out.println(ub.getfname());%></td>
			<td><% out.println(ub.getlname()); %></td>
			<td><% out.println(ub.getemail()); %></td>
			<td><% out.println(ub.getphone()); %></td>
			<td><% out.println(ub.getaddress()); %></td>
			<td><% out.println(ub.getarea()); %></td>
			<td><% out.println(ub.getcity()); %></td>
			<td><% out.println(ub.getstate()); %></td>
			<td><% out.println(ub.getgender()); %></td>
			<td><img src="../uploaded_images/<% out.println(ub.getprofile()); %>" style="height:60px; width:60px"></td>
			<td><% out.println(ub.getpassword()); %></td>
			<td><% out.println(ub.getconpassword()); %></td>
			<td>
				<form action="<%=application.getContextPath()%>/AddUser" method="post"> 
					<input type="hidden" name="uid" value="<%=ub.getuid()%>">
					<input type="submit" class="btn-primary" name="action" type="submit" value="Edit">
				</form>
			</td>
			
			<td>
				<form action="<%=application.getContextPath()%>/AddUser" method="post"> 
					<input type="hidden" name="uid" value="<%=ub.getuid()%>">
					<input type="submit" class="btn-danger" name="action" type="submit" value="delete">
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