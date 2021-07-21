 <%@page import="com.dao.Feedbackdao"%>
<%@page import="com.bean.Feedbackbean"%>
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
    VIEW WORKER FEEDBACK
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> Feedback ID </th>
            <th> Name </th>
			<th> Email </th>
			<th> Satisfaction </th>
			<th> Topic </th>
			<th> Message </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		<%
			Feedbackdao f =new Feedbackdao();
			List<Feedbackbean> list = f.getallworkerFeedback();
			
			for(Feedbackbean fb : list)
			{				
		%>
		
        <tr>
            <td><% out.println(fb.getFeedbackid());%></td>
        	<td><% out.println(fb.getMail()); %></td>
            <td><% out.println(fb.getName());%></td>
        	<td><% out.println(fb.getFeedbackSatisfaction()); %></td>
			<td><% out.println(fb.getFeedbackTopic());%></td>
			<td><% out.println(fb.getFeedbackMessage()); %></td>
			
        	<td>
				<form action="<%= application.getContextPath()%>/FeedbackController" method="post"> 
					<input type="hidden" name="id" value="<%=fb.getFeedbackid()%>">
					<input type="submit" name="action" value="Delete..!" class="btn-danger">
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