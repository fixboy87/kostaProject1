<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>


<title>Elements</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/common/bootstrap4/bootstrap.min.css">
<link href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/common/elements_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/common/elements_responsive.css">
<link rel="stylesheet" href="../../styles/common/bootstrap4/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">

<!-- 추가. 아래 3줄  -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

</head>
<body>

<div class="super_container">
	
	<!-- Header -->

	<header class="header">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="header_container d-flex flex-row align-items-center justify-content-start">

						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<div>LIME</div>
								<div>travel agency</div>
								<div class="logo_image"><img src="../../images/common/logo.png" alt=""></div>
							</div>
						</div>

						<!-- Main Navigation -->
						<nav class="main_nav ml-auto">
							<ul class="main_nav_list">
								<li class="main_nav_item"><a href="index.html">Home</a></li>
								<li class="main_nav_item"><a href="management.html">Management</a></li>
								<li class="main_nav_item"><a href="offers.html">Offers</a></li>
								<li class="main_nav_item"><a href="news.html">News</a></li>
								<li class="main_nav_item"><a href="contact.html">Contact</a></li>
							</ul>
						</nav>

						<!-- Search -->
						<div class="search">
							<form action="#" class="search_form">
								<input type="search" name="search_input" class="search_input ctrl_class" required="required" placeholder="Keyword">
								<button type="submit" class="search_button ml-auto ctrl_class"><img src="../../images/common/search.png" alt=""></button>
							</form>
						</div>

						<!-- Hamburger -->
						<div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>

					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- Menu -->

	<div class="menu_container menu_mm">

		<!-- Menu Close Button -->
		<div class="menu_close_container">
			<div class="menu_close"></div>
		</div>

		<!-- Menu Items -->
		<div class="menu_inner menu_mm">
			<div class="menu menu_mm">
				<div class="menu_search_form_container">
					<form action="#" id="menu_search_form">
						<input type="search" class="menu_search_input menu_mm">
						<button id="menu_search_submit" class="menu_search_submit" type="submit"><img src="../../images/common/search_2.png" alt=""></button>
					</form>
				</div>
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="index.html">Home</a></li>
					<li class="menu_item menu_mm"><a href="Management.html">Management</a></li>
					<li class="menu_item menu_mm"><a href="offers.html">Offers</a></li>
					<li class="menu_item menu_mm"><a href="news.html">News</a></li>
					<li class="menu_item menu_mm"><a href="#">Contact</a></li>
				</ul>

				<!-- Menu Social -->
				
				<div class="menu_social_container menu_mm">
					<ul class="menu_social menu_mm">
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
						<li class="menu_social_item menu_mm"><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
					</ul>
				</div>

				<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
			</div>

		</div>

	</div>
	
	<!-- Home -->

	<div class="home">
		<!-- Image by https://unsplash.com/@peecho -->
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../images/common/elements.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content">
						<div class="home_content_inner">
							<div class="home_title">Management</div>
							<div class="home_breadcrumbs">
								<ul class="home_breadcrumbs_list">
									<li class="home_breadcrumb"><a href="index.html">Home</a></li>
									<li class="home_breadcrumb">Management</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>		
	</div>
	<!-- Elements -->

	<div class="elements">
	
	
	
	<!-- <div class="find_background parallax-window" data-parallax="scroll" data-image-src="../../images/find.jpg" data-speed="0.8"></div> -->
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="find_title text-center">
					<navi class="navi">
						<li>예약현황</li>
						<li>RoomList</li>
						<li>호텔정보수정</li>
						<li>매출현황</li>
					</navi>
					 <hr width = "90%" color = "red">
					</div>
				</div>
				<div class="col-12">
					<div class="find_form_container">
						<form action="#" id="find_form" class="find_form d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-md-between justify-content-start flex-wrap">
							<div class="find_item">
								<div>Destination:</div>
								<input type="text" class="destination find_input" required="required" placeholder="Keyword here">
							</div>
							<div class="find_item">
								<div>Adventure type:</div>
								<select name="adventure" id="adventure" class="dropdown_item_select find_input">
									<option>  click  </option>
									<option>  고객명  </option>
									<option>  연락처  </option>
									<option>  ID  </option>
								</select>
							</div>
							<div class="find_item">
								<div>first day</div>
									<input type="text" id="firstday" size="11">
								    <script>
								        $("#firstday").datepicker();
								    </script>
							</div>
							<div class="find_item">
								<div>second day</div>
									<input type="text" id="secondday" size="11">
								    <script>
								        $("#secondday").datepicker();
								    </script> 
								</select>
							</div>
							<button class="button find_button">Find</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	<!-- 추가 -->
	<div class="calender"></div>
	
	
	
	
		<!-- Buttons -->

		<div class="buttons">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="elements_title">Buttons</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="buttons_container">
							<div class="button button_1 elements_button"><a href="#">Button</a></div>
							<div class="button button_2 elements_button"><a href="#">Button</a></div>
							<div class="button button_3 elements_button"><a href="#">Button</a></div>
							<div class="button button_4 elements_button"><a href="#">Button</a></div>
						</div>
					</div>
				</div>
			</div>	
		</div>

		<!-- Accordions & Tabs -->

		<div class="accordions_tabs">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="elements_title">Accordions & Tabs</div>
					</div>
				</div>
				<div class="row accordions_tabs_container">
					<div class="col-lg-6">
						
						<!-- Accordions -->

						<div class="accordions_content">
							<div class="accordion_container">
								<div class="accordion d-flex flex-row align-items-center"><div>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</div></div>
								<div class="accordion_panel">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam em ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor.</p>
								</div>
							</div>

							<div class="accordion_container">
								<div class="accordion d-flex flex-row align-items-center"><div>Fusce fringilla lectus nec diam auctor, ut fringilla diam.</div></div>
								<div class="accordion_panel">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam em ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor.</p>
								</div>
							</div>

							<div class="accordion_container">
								<div class="accordion d-flex flex-row align-items-center active"><div>Fusce fringilla lectus nec diam auctor, ut fringilla diam.</div></div>
								<div class="accordion_panel">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam em ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor.</p>
								</div>
							</div>

						</div>
					</div>

					<div class="col-lg-6">
						
						<!-- Tabs -->
						<div class="tabs_container">
							<div class="tabs d-flex flex-row align-items-center justify-content-around">
								<div class="tab">FAQ</div>
								<div class="tab">Some facts</div>
								<div class="tab active">Why choose us?</div>
								<div class="tab">Basic stuff</div>
							</div>
							<div class="tab_panels">
								<div class="tab_panel">
									<div class="tab_panel_content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor.</p>
									</div>
								</div>
								<div class="tab_panel">
									<div class="tab_panel_content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
									</div>
								</div>
								<div class="tab_panel active">
									<div class="tab_panel_content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectu.</p>
									</div>
								</div>
								<div class="tab_panel">
									<div class="tab_panel_content">
										<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sLorem ipsum dolor sit amet.</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Loaders -->

		<div class="loaders">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="elements_title">Loaders</div>
					</div>
				</div>
				<div class="row loaders_container">
					<div class="col-lg-3 loader_col">
						<!-- Loader -->
						<div class="loader" data-perc="0.70"><span>Exotic Trips</span></div>
					</div>
					<div class="col-lg-3 loader_col">
						<!-- Loader -->
						<div class="loader" data-perc="0.90"><span>Happy Clients</span></div>
					</div>
					<div class="col-lg-3 loader_col">
						<!-- Loader -->
						<div class="loader" data-perc="0.63"><span>Tour Guides</span></div>
					</div>
					<div class="col-lg-3 loader_col">
						<!-- Loader -->
						<div class="loader" data-perc="0.59"><span>Cruises in '17</span></div>
					</div>
				</div>
			</div>
		</div>

		<!-- Milestones -->

		<div class="milestones">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="elements_title">Milestones</div>
					</div>
				</div>
				<div class="row milestones_container">
					
					<!-- Milestone -->
					<div class="col-lg-3 milestone_col">
						<div class="milestone text-center">
							<div class="milestone_icon"><img class="svg" src="../../images/common/milestone_1.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="17">0</div>
							<div class="milestone_text">Mountains Climbed</div>
						</div>
					</div>

					<!-- Milestone -->
					<div class="col-lg-3 milestone_col">
						<div class="milestone text-center">
							<div class="milestone_icon"><img class="svg" src="../../images/common/milestone_2.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="213">0</div>
							<div class="milestone_text">Islands Visited</div>
						</div>
					</div>

					<!-- Milestone -->
					<div class="col-lg-3 milestone_col">
						<div class="milestone text-center">
							<div class="milestone_icon"><img class="svg" src="../../images/common/milestone_3.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="11923">0</div>
							<div class="milestone_text">Photos Taken</div>
						</div>
					</div>

					<!-- Milestone -->
					<div class="col-lg-3 milestone_col">
						<div class="milestone text-center">
							<div class="milestone_icon"><img class="svg" src="../../images/common/milestone_4.svg" alt=""></div>
							<div class="milestone_counter" data-end-value="15">0</div>
							<div class="milestone_text">Cruises Organized</div>
						</div>
					</div>

				</div>
			</div>
		</div>

		<!-- Icon Boxes -->

		<div class="icon_boxes">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="elements_title">Icon Boxes</div>
					</div>
				</div>
				<div class="row icon_box_container">

					<!-- Icon Box -->
					<div class="col-lg-4 icon_box_col">
						<div class="icon_box">
							<div class="icon_box_image"><img src="../../images/common/service_1.svg" class="svg" alt="https://www.flaticon.com/authors/monkik"></div>
							<div class="icon_box_title">Weekend trips</div>
							<p class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adip iscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sagittis.</p>
							<a href="#" class="icon_box_more">Read More</a>
						</div>
					</div>

					<!-- Icon Box -->
					<div class="col-lg-4 icon_box_col">
						<div class="icon_box">
							<div class="icon_box_image"><img src="../../images/common/service_2.svg" class="svg" alt="https://www.flaticon.com/authors/monkik"></div>
							<div class="icon_box_title">Fun leisure trips</div>
							<p class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adip iscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sagittis.</p>
							<a href="#" class="icon_box_more">Read More</a>
						</div>
					</div>

					<!-- Icon Box -->
					<div class="col-lg-4 icon_box_col">
						<div class="icon_box">
							<div class="icon_box_image"><img src="../../images/common/service_3.svg" class="svg" alt="https://www.flaticon.com/authors/monkik"></div>
							<div class="icon_box_title">Plane tickets</div>
							<p class="icon_box_text">Lorem ipsum dolor sit amet, consectetur adip iscing elit. Fusce fringilla lectus nec diam auctor, ut fringilla diam sagittis.</p>
							<a href="#" class="icon_box_more">Read More</a>
						</div>
					</div>

				</div>
			</div>
		</div>
			
	</div>

	<!-- Footer -->

	<footer class="footer">
		<div class="container">
			<div class="row">

				<!-- Footer Column -->
				<div class="col-lg-4 footer_col">
					<div class="footer_about">
						<!-- Logo -->
						<div class="logo_container">
							<div class="logo">
								<div>destino</div>
								<div>travel agency</div>
								<div class="logo_image"><img src="../../images/common/logo.png" alt=""></div>
							</div>
						</div>
						<div class="footer_about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar sed mauris eget tincidunt. Sed lectus nulla, tempor vel eleifend quis, tempus rut rum metus. Pellentesque ultricies enim eu quam fermentum hendrerit.</div>
						<div class="copyright"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-4 footer_col">
					<div class="footer_latest">
						<div class="footer_title">Latest News</div>
						<div class="footer_latest_content">

							<!-- Footer Latest Post -->
							<div class="footer_latest_item">
								<div class="footer_latest_image"><img src="../../images/common/latest_1.jpg" alt="https://unsplash.com/@peecho"></div>
								<div class="footer_latest_item_content">
									<div class="footer_latest_item_title"><a href="news.html">Brazil Summer</a></div>
									<div class="footer_latest_item_date">Jan 09, 2018</div>
								</div>
							</div>

							<!-- Footer Latest Post -->
							<div class="footer_latest_item">
								<div class="footer_latest_image"><img src="../../images/common/latest_2.jpg" alt="https://unsplash.com/@sanfrancisco"></div>
								<div class="footer_latest_item_content">
									<div class="footer_latest_item_title"><a href="news.html">A perfect vacation</a></div>
									<div class="footer_latest_item_date">Jan 09, 2018</div>
								</div>
							</div>

						</div>
					</div>
				</div>

				<!-- Footer Column -->
				<div class="col-lg-4 footer_col">
					<div class="tags footer_tags">
						<div class="footer_title">Tags</div>
						<ul class="tags_content d-flex flex-row flex-wrap align-items-start justify-content-start">
							<li class="tag"><a href="#">travel</a></li>
							<li class="tag"><a href="#">summer</a></li>
							<li class="tag"><a href="#">cruise</a></li>
							<li class="tag"><a href="#">beach</a></li>
							<li class="tag"><a href="#">offer</a></li>
							<li class="tag"><a href="#">vacation</a></li>
							<li class="tag"><a href="#">trip</a></li>
							<li class="tag"><a href="#">city break</a></li>
							<li class="tag"><a href="#">adventure</a></li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</footer>
</div>

<script src="../../destino/js/jquery-3.2.1.min.js"></script>
<script src="../../styles/common/bootstrap4/popper.js"></script>
<script src="../../styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/common/greensock/TweenMax.min.js"></script>
<script src="../../plugins/common/greensock/TimelineMax.min.js"></script>
<script src="../../plugins/common/scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/common/greensock/animation.gsap.min.js"></script>
<script src="../../plugins/common/greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/common/easing/easing.js"></script>
<script src="../../plugins/common/progressbar/progressbar.min.js"></script>
<script src="../../plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="../../destino/js/elements_custom.js"></script>



</body>
</html>