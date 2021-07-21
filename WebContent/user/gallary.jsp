<%@page import="java.util.List"%>
<%@page import="com.bean.add_category_bean"%>
<%@page import="com.dao.addworkercategorydao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from www.sharjeelanjum.com/html/jobs-portal/demo/index3.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 02 Nov 2019 09:06:05 GMT -->
<jsp:include page="head.jsp"></jsp:include>

<body>
<!-- Header start -->
  <jsp:include page="header.jsp"></jsp:include>
 <!-- Header End -->
 
 <section class="wrapper">
		<!-- gallery -->
		<!-- gallery -->
	<div class="gallery">
		<h1 class="w3ls_head" style="color: #263bd6;!important; text-align: center;!important; font-style: italic;!importanat; text-decoration: inherit;!important">Gallery</h1>
		<div class="gallery-grids">
				<div class="gallery-top-grids">
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#"  data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/driver1.jpeg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Driver</h4>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/housekeeper1.jpeg" alt=""  class="tr" height="280px" width="420px"/>
								<h4>House Keeper</h4>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/milkman9.jpeg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Milkman</h4>
							</a>
						</div>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="gallery-top-grids">
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/chef1.jpeg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>Chef</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/gardener9.jpg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>Gardener</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/watchman6.jpg" alt="" class="tr"  height="280px" width="420px"/>
                                <h4>Watchman</h4>
								</div>								
							</a>
						</div>
					</div>
					
					<div class="clearfix"> </div>
				</div>
				<div class="gallery-top-grids">
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/washerman2.jpg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Washerman</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/nurse1.jpeg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Nurse</h4>
								</div>
							</a>
						</div>
					</div>
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/teacher3.jpg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Teacher</h4>
								</div>
							</a>
						</div>
					<div class="clearfix"> </div>
				
				<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#"  data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/electrician2.jpg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Electrician</h4>
								</div>
							</a>
						</div>
						
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/plumber2.jpeg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>Plumber</h4>
								</div>
							</a>
						</div>
					
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/carpenter2.jpg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>Carpenter</h4>
								</div>
							</a>
						</div>
					
				  <div class="clearfix"> </div>
				 	
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#"  data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/painter4.jpg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Painter</h4>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/barber4.jpeg" alt="" class="tr" height="280px" width="420px"/>
								<h4>Barber</h4>
							</a>
						</div>
					</div>
					
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/meson3.jpeg" alt="" class="tr" />
								<h4>Mason</h4>
							</a>
						</div>
					</div>
					
					<div class="clearfix"> </div>
				
				<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#"  data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/petkeeper5.jpeg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>Pet Keeper</h4>
						</div>
							</a>
				</div>
					
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/blacksmith3.jpg" alt="" class="tr"  />
								<h4>BlackSmith</h4>
								</div>
							</a>
						</div>
					
					<div class="col-sm-4 gallery-grids-left">
						<div class="gallery-grid">
							<a class="example-image-link" href="#" data-lightbox="example-set" data-title="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus vitae cursus ligula">
								<img src="resources/images/pic/goldsmith11.jpg" alt="" class="tr"  height="280px" width="420px"/>
								<h4>GoldSmith</h4>
								</div>
							</a>
						</div>
					
					<div class="clearfix"> </div>
			
	<!-- //gallery -->
</section>
 
 <!-- footer start -->
 <jsp:include page="footer.jsp"></jsp:include>
 <!-- footer end -->
<jsp:include page="script.jsp"></jsp:include>

</body>
</html>