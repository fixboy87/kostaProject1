<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html lang="en">
<head>


<title>ReservationStatus</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/KJW_Style/bootstrap4/bootstrap.min.css">
<link
	href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/KJW_Style/elements_styles.css">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/KJW_Style/elements_responsive.css">
<link rel="stylesheet"
	href="http://localhost:8081/kostaProject1/styles/KJW_Style/bootstrap4/bootstrap.min.css">

<!-- http://localhost:8081/kostaProject1/destino/js/jquery-3.2.1.min.js -->

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
<!--폰트 -->

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
								<img
									src="http://localhost:8081/kostaProject1/images/common/search_2.png"
									alt="">
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
					<div class="menu_copyright menu_mm">Colorlib All rights reserved</div>
				</div>
			</div>
		</div>

		<!-- Home -->

		<div class="home">
			<!-- Image by https://unsplash.com/@peecho -->
			<div class="home_background parallax-window" data-parallax="scroll"
				data-image-src="http://localhost:8081/kostaProject1/images/common/elements.jpg"
				data-speed="0.8"></div>
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="home_content">
							<div class="home_content_inner">
								<div class="home_title">Management</div>
								<div class="home_breadcrumbs">
									<ul class="home_breadcrumbs_list">
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
							<li><a href="Management.do" method="post">예약현황</a></li>
							<li><a href="roomList.do" method="post">RoomList</a></li>
							<li><a href="Hotel_Info.do" method="post">호텔정보수정</a></li>
							<li><a href="Sales.do" method="post">매출현황</a></li>
							<br></br>
							</navi>
						</div>
					</div>
					<div class="col-12">
						<div class="find_form_container">
							<form action="Management.jsp" id="find_form" method="post"
								class="find_form d-flex flex-md-row flex-column align-items-md-center align-items-start justify-content-md-between justify-content-start flex-wrap">
								<div class="find_item">
									<div>Adventure type:</div>
									<select name="adventure" id="adventure"
										class="dropdown_item_select find_input">
										<option>원하시는 항목을 선택하세요</option>
										<option>고객명</option>
										<option>ID</option>
										<option>연락처</option>
										<option>E-MAIL</option>
										<option>결제상태</option>
									</select>
								</div>
								<div class="find_item">
									<div>Destination:</div>
									<input type="text" class="destination find_input"
										required="required" placeholder="Keyword here">
								</div>
								<div class="find_item">
									<div>first day</div>
									<input type="text" id="firstday" size="9" autocomplete="off"
										placeholder="YYYY-MM-DD">
									<script>
										$("#firstday").datepicker();
									</script>
								</div>
								<div class="find_item">
									<div>second day</div>
									<input type="text" id="secondday" autocomplete="off" size="9"
										placeholder="YYYY-MM-DD">
									<script>
										$("#secondday").datepicker();
									</script>
								</div>
								<button class="button find_button">Find</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>

<!-- -------------------------------테이블------------------------------------------------------ -->

		<div id="wrap" align="cnter">
			<div class="elements_title">예약현황</div>
			<table class="type10" width="1130">
				<thead>
					<tr>
						<th>예약번호</th>
						<th>방번호</th>
						<th>호텔번호</th>
						<th>예약이름</th>
						<th>예약가격</th>
						<th>Check-in</th>
						<th>Check-out</th>
						<th>seq</th>
						<th>거주기간</th>
						<th>예약상태</th>
						<th>예약날짜</th>
						<th>선택</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<!-- <th scope="row">1</th> -->
						<c:forEach var="reservationSearch" items="${ManagementPaging.list}">
							<tr>
								<td>${reservationSearch.booking_num}</td>
								<td>${reservationSearch.room_num}</td>
								<td>${reservationSearch.h_no}</td>
								<td>${reservationSearch.booking_name}</td>
								<td>${reservationSearch.booking_price}</td>
								<td><fmt:parseDate var="dateString1" value="${reservationSearch.start_day}" pattern="yyyy-MM-dd" /> 		<!-- string을 date로 파싱해줌 --> 
									<fmt:formatDate value="${dateString1}" pattern="yyyy-MM-dd" /> 											<!-- dateString에 저장된 date를 사용 -->
								</td>
								<td><fmt:parseDate var="dateString2" value="${reservationSearch.end_day}" pattern="yyyy-MM-dd" />
									<fmt:formatDate value="${dateString2}" pattern="yyyy-MM-dd" />
								</td>
								<td>${reservationSearch.seq}</td>
								<td>${reservationSearch.stay_day}</td>
								<td>${reservationSearch.p_condition}</td>
								<td>${reservationSearch.b_date}</td>
								<td>
									<select>
										<option>----</option>
										<option>수정</option>
										<option>삭제</option>
									</select>
									<button>확인</button>
								</td>
							</tr>
						</c:forEach>
				</tbody>
			</table>


			<!-- 이전페이지 -->
			<c:if test="${reservationSearch.startPage > 5}">
				<a href="Management.jsp?pageNum=$" ${reservationSearch.startPage-1}>[이전]</a>
			</c:if>


			<!-- 페이지목록 -->
			<c:forEach var="pageNo" begin="${reservationSearch.startPag}"
				end="${reservationSearch.endPage}">
				<c:if test="${reservationSearch.requestPage == pageNo}">
					<b>
				</c:if>
				<a href="Management.jsp?pageNum=${PageNo}">[${pageNo}]</a>
				<c:if test="${reservationSearch.requestPage == pageNo}">
					</b>
				</c:if>
			</c:forEach>

			<!-- 다음페이지 -->
			<c:if
				test="${Users.endPage < reservationSearch.totalPageCount}">
				<a href="Management.jsp?pageNum=${reservationSearch.startPage+5}">[이후]</a>
			</c:if>
		</div>
	</div>
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
							<img
								src="http://localhost:8081/kostaProject1/images/common/service_1.svg"
								class="svg" alt="https://www.flaticon.com/authors/monkik">
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
							<img
								src="http://localhost:8081/kostaProject1/images/common/service_2.svg"
								class="svg" alt="https://www.flaticon.com/authors/monkik">
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
							<img
								src="http://localhost:8081/kostaProject1/images/common/service_3.svg"
								class="svg" alt="https://www.flaticon.com/authors/monkik">
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
	<!-- </div> -->

	<!-- Footer -->
	<%@include file="../sub_page/footer.html"%>
	<!-- </div> -->

	<script
		src=".http://localhost:8081/kostaProject1/destino/js/jquery-3.2.1.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/TimelineMax.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/animation.gsap.min.js"></script>
	<script 
		src="http://localhost:8081/kostaProject1/plugins/common/greensock/ScrollToPlugin.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/easing/easing.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/progressbar/progressbar.min.js"></script>
	<script
		src="http://localhost:8081/kostaProject1/plugins/common/parallax-js-master/parallax.min.js"></script>
	<script 
		src="http://localhost:8081/kostaProject1/destino/js/elements_custom.js"></script>

</body>
</html>