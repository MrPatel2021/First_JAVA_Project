<%@page import="com.bean.Contactbean"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Contactusdao"%>
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
    VIEW USER CONTACT US
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> User ID </th>
			<th> Full Name </th>
			<th> Email </th>
			<th> Mobile Number  </th>
			<th> Message </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
        <%
          	Contactusdao ab = new Contactusdao();
        	List<Contactbean> list = ab.getallContactus();
          	
          	for(Contactbean contact : list)
          	{
          	
          %>
          
          <tr>
          	<td><% out.println(contact.getContact_us_id()); %></td>
          	<td><% out.println(contact.getName()); %></td>
          	<td><% out.println(contact.getEmail()); %></td>
          	<td><% out.println(contact.getMobile_no()); %></td>
          	<td><% out.println(contact.getMessage()); %></td>
                  
          	<td>
          		<form method="post" action="<%=application.getContextPath()%>/ContactusController">
          		<input type="hidden" name="id" value="<%=contact.getContact_us_id()%>">
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