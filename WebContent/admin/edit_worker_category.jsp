<%@page import="com.dao.addworkercategorydao"%>
<%@page import="com.bean.add_category_bean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>

<%
	add_category_bean ab = addworkercategorydao.getCategoeyById(Integer.parseInt(request.getParameter("id")));
%>

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
	<div class="w3layouts-main col-md-6 col-md-push-3 col-sm-12 col-xs-12">
	<form action="<%=application.getContextPath()%>/AddCategoryController" data-parsley-validate="true" method="post">
		<div class="form-group">	
		<input type="hidden" class="ggg" placeholder="ID" name="id" value="<%=ab.getCategoryid()%>">
		<input type="text" class="ggg" placeholder="Area Name" name="updatecategory" value="<%=ab.getCategoryname()%>" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
		<input type="submit" value="UPDATE" name="action">
		</div>
	</form>
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