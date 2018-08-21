<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>

<!-- src="http://localhost:8081/kostaProject1/ -->
<title>RoomList</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/KJW_Style/bootstrap4/bootstrap.min.css">
<link href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/KJW_Style/elements_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/KJW_Style/elements_responsive.css">
<link rel="stylesheet" href="../../styles/KJW_Style/bootstrap4/bootstrap.min.css">

<!-- 추가. 아래 3줄  -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>								<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>							<!-- 달력 -->
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">				<!-- 달력 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding" rel="stylesheet">		<!-- 폰트 -->

</head>
<body>

	<div class="super_container">

		<!-- Header -->
		<%@include file="../sub_page/header_menu.jsp"%>


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
							<button id="menu_search_submit" class="menu_search_submit"
								type="submit">
								<img src="../../images/common/search_2.png" alt="">
							</button>
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
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fa fa-pinterest" aria-hidden="true"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fa fa-linkedin" aria-hidden="true"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fa fa-instagram" aria-hidden="true"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fa fa-facebook" aria-hidden="true"></i></a></li>
							<li class="menu_social_item menu_mm"><a href="#"><i
									class="fa fa-twitter" aria-hidden="true"></i></a></li>
						</ul>
					</div>

					<div class="menu_copyright menu_mm">Colorlib All rights
						reserved</div>
				</div>

			</div>

		</div>

		<!-- Home -->

		<div class="home">
			<!-- Image by https://unsplash.com/@peecho -->
			<div class="home_background parallax-window" data-parallax="scroll"
				data-image-src="../../images/common/elements.jpg" data-speed="0.8"></div>
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



			<!-- <div class="find_background parallax-window" data-parallax="scroll" data-image-src="images/find.jpg" data-speed="0.8"></div> -->
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="find_title text-center">
							<navi class="navi_bar">
							<li>예약현황</li>
							<li>RoomList</li>
							<li>호텔정보수정</li>
							<li>매출현황</li>
							<br></br>
							</navi>

						</div>
					</div>
					<div class="elements_title">Hotel Info</div>
					<div class="col-12">
						<div class="find_form_container">
							<form action="#" id="find_form"
								class="find_form d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-md-between justify-content-start flex-wrap">

								<!-- 방번호 입력창 -->
								<div class="find_item_hotel_info1">
									<input type="text" class="destination find_input"
										required="required" placeholder="방번호를 입력하세요">
								</div>

								<!-- 방종류 입력창 -->
								<div class="find_item_hotel_info2">
									<input type="text" class="destination find_input"
										required="required" placeholder="방종류를 입력하세요">
								</div>

								<div class="find_item_hotel_info3">
									<!-- 가격 입력창 -->
									<input type="text" class="destination find_input"
										required="required" placeholder="가격을 입력하세요">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- -------------------------------파일업로드창------------------------------------------------------ -->
			<div id="wrap" align="cnter">
				<br></br>
				<form action="insertAction.jsp" method="post"
					enctype="multipart/form-data">
					<!-- enctype="multipart/form-data"  파일을 넘겨주는 코드 -->
					<!-- 파일업로드는 이문서부터  요렇게 수정-->
					<div class="find_item_hotel_info4">
						<input type="text" class="destination find_input" name="title"
							placeholder="제목을 입력하세요">
					</div>
					<br></br>
					<textarea class="find_item_hotel_info5" rows="8" cols="150" name="contents" placeholder="    내용을 입력하세요"></textarea>
					<br></br> <input type="file" name="fname"> <br>
					<button type="submit" value="submit" class="button find_button">Submit</button>
				</form>
				<!---------------------------------------------------------------------------------------- -->
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
								<div class="icon_box_image">
									<img src="../../images/common/service_1.svg" class="svg"
										alt="https://www.flaticon.com/authors/monkik">
								</div>
								<div class="icon_box_title">Weekend trips</div>
								<p class="icon_box_text">Lorem ipsum dolor sit amet,
									consectetur adip iscing elit. Fusce fringilla lectus nec diam
									auctor, ut fringilla diam sagittis.</p>
								<a href="#" class="icon_box_more">Read More</a>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-lg-4 icon_box_col">
							<div class="icon_box">
								<div class="icon_box_image">
									<img src="../../images/common/service_2.svg" class="svg"
										alt="https://www.flaticon.com/authors/monkik">
								</div>
								<div class="icon_box_title">Fun leisure trips</div>
								<p class="icon_box_text">Lorem ipsum dolor sit amet,
									consectetur adip iscing elit. Fusce fringilla lectus nec diam
									auctor, ut fringilla diam sagittis.</p>
								<a href="#" class="icon_box_more">Read More</a>
							</div>
						</div>

						<!-- Icon Box -->
						<div class="col-lg-4 icon_box_col">
							<div class="icon_box">
								<div class="icon_box_image">
									<img src="../../images/common/service_3.svg" class="svg"
										alt="https://www.flaticon.com/authors/monkik">
								</div>
								<div class="icon_box_title">Plane tickets</div>
								<p class="icon_box_text">Lorem ipsum dolor sit amet,
									consectetur adip iscing elit. Fusce fringilla lectus nec diam
									auctor, ut fringilla diam sagittis.</p>
								<a href="#" class="icon_box_more">Read More</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->
		<%@include file="../sub_page/footer.html"%>


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