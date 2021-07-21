<%@page import="com.bean.areabean"%>
<%@page import="com.dao.areadao"%>
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
    VIEW AREA
    </div>
    <div>
      <table class="table">
        <thead>
          <tr>
            <th>AREA ID</th>
            <th>AREA NAME</th>
            <th>EDIT</th>
            <th>DELETE</th>
          </tr>
        </thead>
        <tbody>
		
          <%
          	
          	areadao ab = new areadao();
    		List<areabean> list = ab.getAllArea();
          	
          	for(areabean area : list)
          	{
          	
          %>
          
          <tr>
          	<td><% out.println(area.getAreaid()); %></td>
          	<td><% out.println(area.getAreaname()); %></td>
          
          	<td>
          		<form action="<%=application.getContextPath()%>/AreaController" method="post">
          		<input type="hidden" name="id" value="<%=area.getAreaid()%>">
          		<input type="submit" class="btn-primary" name="action" value="EDIT">
          		</form>
          	</td>
          		
          	<td>
          		<form action="<%=application.getContextPath()%>/AreaController" method="post">
          		<input type="hidden" name="id" value="<%=area.getAreaid()%>">
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