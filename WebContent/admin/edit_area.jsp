<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao" %>
<html>
<%
	areabean ab = (areabean) request.getAttribute("id");
%>
<head>
<title>Happiness At Door</title>
<style type="text/css">
.main{
background-color: pink;
color: blue;
font-size: 20px;
margin-top: 50px;
}
.tx{
height: 30px;
margin-left: 600px;
}
</style>
</head>
<body class="main">
<h2 style="text-align: center; ">Edit Area</h2>
<form action="<%=application.getContextPath()%>/AreaController" data-parsley-validate="true" method="post">
		<div class="form-group">	
		<input type="hidden" class="tx" placeholder="ID" name="id" value="<%=ab.getAreaid()%>">
		<input type="text" class="tx" placeholder="Area Name" name="updatearea" value="<%=ab.getAreaname()%>" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change"><br><br>
		<input type="submit" class="tx" value="UPDATE" name="action" style="color: red;background-color: skyblue;font-weight: bold;width: 170px;height:30px;text-align: center;">
		</div>
	</form>
</body>
</html>

<%-- <%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao" %>
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
	areabean ab = (areabean) request.getAttribute("id");
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
	<form action="<%=application.getContextPath()%>/AreaController" data-parsley-validate="true" method="post">
		<div class="form-group">	
		<input type="hidden" class="ggg" placeholder="ID" name="id" value="<%=ab.getAreaid()%>">
		<input type="text" class="ggg" placeholder="Area Name" name="updatearea" value="<%=ab.getAreaname()%>" required="required" data-parsley-length="[3,20]" data-parsley-trigger="change">
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
</html> --%>