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
    COMPLAIN
    </div>
    <div style="overflow:scroll;">
      <table class="table">   
        <thead>
          <tr>
            <th> User ID </th>
			<th> First name </th>
			<th> Last name  </th>
			<th> Email </th>
			<th> Message </th>
			<th> Delete </th>
         </tr>
        </thead>
        <tbody>
		
        <tr>
        	<td>1</td>
        	<td>Bharat</td>
        	<td>Joshi</td>
        	<td>bj@gmail.com</td>
        	<td>Your worker not done a work as much as I think....</td>
          	<td><input type="submit" class="btn-danger" name="action" value="DELETE"></td>
        </tr>
        <tr>
        	<td>2</td>
        	<td>yash</td>
        	<td>Joshi</td>
        	<td>yj@gmail.com</td>
        	<td>Worker break my glass of dining-table....</td>
       		<td><input type="submit" class="btn-danger" name="action" value="DELETE"></td>
       </tr>
       <tr>
        	<td>3</td>
        	<td>Rajan</td>
        	<td>Gupta</td>
        	<td>rjgupta101@gmail.com</td>
        	<td>Your worker not come at a time</td>
       		<td><input type="submit" class="btn-danger" name="action" value="DELETE"></td>
       </tr>
       <tr>
        	<td>4</td>
        	<td>Raj</td>
        	<td>Jani</td>
        	<td>rjjani989@gmail.com</td>
        	<td>Worker take more time compare to my estimation</td>
       		<td><input type="submit" class="btn-danger" name="action" value="DELETE"></td>
       </tr>
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