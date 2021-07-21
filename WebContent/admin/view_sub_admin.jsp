<%@page import="com.bean.add_sub_admin_bean"%>
<%@page import="com.dao.add_sub_admin_dao"%>
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
    VIEW SUB ADMIN
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> Admin ID </th>
			<th> First Name </th>
			<th> Last Name  </th>
			<th> Email ID </th>
			<th> Phone No. </th>
			<th> Address </th>
			<th> Area </th>
			<th> City</th>
			<th> State</th>
			<th> Country</th>
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
			add_sub_admin_dao ad = new add_sub_admin_dao();
			List<add_sub_admin_bean> list =ad.getAlldata();
			for(add_sub_admin_bean ab : list)
			{
		%>
		
			<tr>
			<td><% out.println(ab.getaid());%></td>
			<td><% out.println(ab.getfname());%></td>
			<td><% out.println(ab.getlname()); %></td>
			<td><% out.println(ab.getemail()); %></td>
			<td><% out.println(ab.getphone()); %></td>
			<td><% out.println(ab.getaddress()); %></td>
			<td><% out.println(ab.getarea()); %></td>
			<td><% out.println(ab.getcity()); %></td>
			<td><% out.println(ab.getstate()); %></td>
			<td><% out.println(ab.getcountry()); %></td>
			<td><% out.println(ab.getgender()); %></td>
			<td><img src="../uploaded_images/<% out.println(ab.getprofile()); %>" style="height:60px; width:60px"></td>
			<td><% out.println(ab.getpassword()); %></td>
			<td><% out.println(ab.getconpassword()); %></td>
			
			<td>
				<form action="<%=application.getContextPath()%>/AdminRegController" method="post"> 
					<input type="hidden" name="aid" value="<%=ab.getaid()%>">
					<input type="submit" class="btn-primary" name="action" value="EDIT">
				</form>
			</td>
			
			<td>
				<form action="<%=application.getContextPath()%>/AdminRegController" method="post"> 
					<input type="hidden" name="aid" value="<%=ab.getaid()%>">
					<input type="submit" class="btn-danger" name="action" value="DELETE">
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