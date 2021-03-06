<%@page import="yanoll.controller.HotelListActionForm"%>
<%@page import="java.util.List"%>
<%@page import="yanoll.models.dao.HotelDao"%>
<%@page import="yanoll.models.vo.Hotel"%>
<%@page import="yanoll.models.service.HotelService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="kr">

<head>
<title>Offers</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css"> <!-- ok -->
<link href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"><!-- ok -->
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/offers_styles.css"><!-- ok -->
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/offers_responsive.css"><!-- ok -->
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/responsive.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/custom.css">

<!--레인지 슬라이더 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- custom JS -->
<script type="text/javascript" src="http://localhost:8081/kostaProject1/scripts/HY_Script/priceRang.js"></script>
<script type="text/javascript" src="http://localhost:8081/kostaProject1/scripts/HY_Script/SearchConditions.js"></script>

<!-- 달력 -->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>                    
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>                  
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">     

<!-- Custom Css -->
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/HY_Style/ListPage.css">


</head>
<body>

<div class="super_container">
<!-- Header -->
<%@ include file="../sub_page/header_menu.jsp"%>
<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>
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
						<button id="menu_search_submit" class="menu_search_submit" type="submit"><img src="images/search_2.png" alt=""></button>
					</form>
				</div>
				<ul class="menu_list menu_mm">
					<li class="menu_item menu_mm"><a href="index.html">Home</a></li>
					<li class="menu_item menu_mm"><a href="about.html">About us</a></li>
					<li class="menu_item menu_mm"><a href="#">Offers</a></li>
					<li class="menu_item menu_mm"><a href="news.html">News</a></li>
					<li class="menu_item menu_mm"><a href="contact.html">Contact</a></li>
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
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="http://localhost:8081/kostaProject1/images/common/hu.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="home_content">
						<div class="home_content_inner">
							<div class="home_title"><!-- Offers --></div>
							<div class="home_breadcrumbs">
							</div>
							<!--파인드 -->
						 	
								
								
							</div>
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- Find Form -->


	<!-- Offers -->

	<div class="offers">
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title text-center">
					<c:forEach var="listH" items="${detail}" begin="1" end="1" >
						<h2>${listH.h_name}</h2>
					</c:forEach>
						<div>take a look at these rooms</div>
					</div>
				</div>
			</div>
						<div id="reviewLink"><button id="reviewLink_button"><a href="review_list.do?h_no=${h_no }">후기</a></button></div>
			
			<div class="row">
				<div class="col">
					<div class="items item_grid clearfix">
					<!-- forEach -->
					<c:forEach var="listH" items="${detail}"> 
						<!-- Item -->
						<div class="item clearfix rating_5">
						
							<div class="item_image"><img src="http://localhost:8081/kostaProject1/images/pages/HotelRoomImg/${listH.pic_room_url}" alt=""></div>
							<div class="item_content">
								<div class="item_price">${listH.room_type}</div>
								<div class="item_title"></div>
								<ul>
									<li>${listH.room_price}만원</li>
									<li>1 nights</li>
									<li>11시 입실</li>
								</ul>
								<div class="rating rating_5" style="display: none !important;" >
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<div class="item_text"></div>
								<div class="item_more_link"><a href="#"></a></div>
							</div>
						</div>
					</c:forEach> 
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col">
					<div class="pages">
						<ul class="pages_list">
							<li class="page active"><a href="#">01.</a></li>
							<li class="page"><a href="#">02.</a></li>
							<li class="page"><a href="#">03.</a></li>
							<li class="page"><a href="#">04.</a></li>
						</ul>
					</div>
				</div>
			</div>
			<%-- <%@include file="../syj_page/index.html"%> --%>
			
		</div>
	</div>
</div>

<!-- Footer -->
<%@include file="../sub_page/footer.html" %>

<!-- <script src="../../scripts/common/jquery-3.2.1.min.js"></script> -->
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/TimelineMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/scrollmagic/ScrollMagic.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/animation.gsap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/ScrollToPlugin.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/Isotope/isotope.pkgd.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/offers_custom.js"></script>
<!--  메뉴이펙트 스크립트 -->
<script src="http://localhost:8081/kostaProject1/scripts/common/menuEffect.js" type="text/javascript"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/custom.js"></script>
</body>
</html>