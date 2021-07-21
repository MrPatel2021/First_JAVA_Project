<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<aside>
    <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <div class="leftside-navigation">
            <ul class="sidebar-menu" id="nav-accordion">
                <li>
                    <a class="active" href="index.jsp">
                        <i class="fa fa-dashboard"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-globe"></i>
                        <span>Manage Worker Category</span>
                    </a>
                    <ul class="sub">
						<li><a href="add_worker_category.jsp"><i class="fa fa-user"></i>Add Worker Category</a></li>
						<li><a href="view_worker_category.jsp"><i class="fa fa-indent"></i>View Worker Category</a></li>
                    </ul>
                </li>
                
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-globe"></i>
                        <span>Manage Area</span>
                    </a>
                    <ul class="sub">
						<li><a href="add_area.jsp"><i class="fa fa-plus"></i>Add Area</a></li>
						<li><a href="view_area.jsp"><i class="fa fa-desktop"></i>View Area</a></li>
                    </ul>
                </li>
                
                <!-- <li>
                    <a href="complain.jsp">
                        <i class="fa fa-comments"></i>
                        <span>Complain</span>
                    </a>
                </li> -->                   
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-phone"></i>
                        <span>Contact Us</span>
                    </a>
                    <ul class="sub">
						<li><a href="contact_us_user.jsp"><i class="fa fa-phone"></i>User Contact Us</a></li>
						<li><a href="contact_us_worker.jsp"><i class="fa fa-phone"></i>Worker Contact Us</a></li>
                    </ul>
                </li>
                
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-pencil"></i>
                        <span>Feedback</span>
                    </a>
                    <ul class="sub">
						<li><a href="feedback_user.jsp"><i class="fa fa-pencil"></i>User Feedback</a></li>
						<li><a href="feedback_worker.jsp"><i class="fa fa-pencil"></i>Worker Feedback</a></li>
                    </ul>
                </li>
                
                <li>
                    <a href="view_user.jsp">
                        <i class="fa fa-user"></i>
                        <span>View User</span>
                    </a>
                </li> 
                
                <li>
                    <a href="view_worker.jsp">
                        <i class="fa fa-user"></i>
                        <span>View Worker</span>
                    </a>
                </li> 
                
                <li>
                    <a href="worker_booking_history.jsp">
                        <i class="fa fa-list-alt"></i>
                        <span>Worker Booking History</span>
                    </a>
                </li> 
                <li class="sub-menu">
                    <a href="javascript:;">
                        <i class="fa fa-male"></i>
                        <span>Admin</span>
                    </a>
                    <ul class="sub">
						<li><a href="add_sub_admin.jsp"><i class="fa fa-user"></i>Add Sub Admin</a></li>
						<li><a href="view_sub_admin.jsp"><i class="fa fa-desktop"></i>View Admin</a></li>
                    </ul>
                </li>
          
                
            </ul>            
        </div>
        <!-- sidebar menu end-->
    </div>
</aside>