<%@page import="java.util.List"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>
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
    WORKER CATEGORY DETAILS
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> Worker Category ID </th>
			<th> Worker Category Name </th>
			<th> Edit </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
        <%
          	
        	addworkercategorydao awcb = new addworkercategorydao();
    		List<add_category_bean> list = awcb.getAllWorkerCategory();
          	
          	for(add_category_bean acb : list)
          	{
          	
          %>
          
          <tr>
          	<td><% out.println(acb.getCategoryid()); %></td>
          	<td><% out.println(acb.getCategoryname()); %></td>
          	
          	<td>
          		<form method="post" action="<%=application.getContextPath()%>/AddCategoryController">
          		<input type="hidden" name="id" value="<%=acb.getCategoryid()%>">
          		<input type="submit" class="btn-primary" name="action" value="EDIT">
          		</form>
          	</td>
          	
          <td>
          		<form method="post" action="<%=application.getContextPath()%>/AddCategoryController">
          		<input type="hidden" name="id" value="<%=acb.getCategoryid()%>">
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