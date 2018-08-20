<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>


<title>ReservationStatus</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="../../styles/common/bootstrap4/bootstrap.min.css">
<link
	href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../../styles/common/elements_styles.css">
<link rel="stylesheet" type="text/css"
	href="../../styles/common/elements_responsive.css">
<link rel="stylesheet"
	href="../../styles/common/bootstrap4/bootstrap.min.css">

<!-- 추가. 아래 3줄  -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- 달력 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- 달력 -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 달력 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding"
	rel="stylesheet">
<!-- 폰트 -->



<!-- Resources -->
<script src="https://www.amcharts.com/lib/3/amcharts.js"></script>
<script src="https://www.amcharts.com/lib/3/serial.js"></script>
<script src="https://www.amcharts.com/lib/3/plugins/export/export.min.js"></script>
<link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
<script src="https://www.amcharts.com/lib/3/themes/black.js"></script>


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
					<div class="elements_title">매출현황</div>
					<div class="col-12">
						<div class="find_form_container">
							<form action="#" id="find_form"
								class="find_form d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-md-between justify-content-start flex-wrap">
								<div class="find_item">
									<div>first day</div>
									<input type="text" id="firstday" size="9"
										placeholder="YYYY-MM-DD">
									<script>
										$("#firstday").datepicker();
									</script>
								</div>
								<div class="find_item">
									<div>second day</div>
									<input type="text" id="secondday" size="9"
										placeholder="YYYY-MM-DD">
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

<!-- ---------------------------------------그래프---------------------------------------------- -->
		
		



<!-- ------------------------------------------------------------------------------------- -->

		<!-- -------------------------------테이블... 어차피 바뀔꺼... ㅜㅜ 임시------------------------------------------------------ -->
		<div id="wrap" align="cnter">
			<br></br>
			<div class="buttons">
				<img id="button1" src="../../images/wicon.png" alt="호텔추가"
					onclick="alert('나중에 페이지 이동할꺼임~');" width="35px" height="35px" /> <img
					id="button2" src="../../images/ricon.png" alt="호텔수정"
					onclick="alert('나중에 페이지 이동할꺼임~');" width="35px" height="35px" /> <img
					id="button3" src="../../images/dicon.png" alt="호텔삭제"
					onclick="alert('나중에 페이지 이동할꺼임~');" width="35px" height="35px" />
			</div>
			<table class="type10">
				<thead>
					<tr>
						<th>선택</th>
						<th>번호</th>
						<th>고객명</th>
						<th>ID</th>
						<th>연락처</th>
						<th>E-MAIL</th>
						<th>결제상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><input type="radio" name="select" value="1"></th>
						<td>1</td>
						<!--  나중에 자동으로 번호 넣어야함 -->
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
					</tr>
					<tr>
						<th scope="row" class="even"><input type="radio"
							name="select" value="1"></th>
						<td class="even">2</td>
						<!--  나중에 자동으로 번호 넣어야함 -->
						<td class="even">내용이 들어갑니다.</td>
						<td class="even">내용이 들어갑니다.</td>
						<td class="even">내용이 들어갑니다.</td>
						<td class="even">내용이 들어갑니다.</td>
						<td class="even">내용이 들어갑니다.</td>
					</tr>
					<tr>
						<th scope="row"><input type="radio" name="select" value="1"></th>
						<td>3</td>
						<!--  나중에 자동으로 번호 넣어야함 -->
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
						<td>내용이 들어갑니다.</td>
					</tr>
				</tbody>
			</table>
		</div>
		<!-- -------------------------------------------------------------------------------------- -->






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