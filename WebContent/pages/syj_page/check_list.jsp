<%@page import="yanoll.models.vo.Review_Board"%>
<%@page import="java.util.List"%>
<%@page import="yanoll.models.dao.ReviewDao"%>
<%@page import="yanoll.models.vo.Review_listModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link
	href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css"
	href="../../styles/gng_style/gng_main.css">
<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/TimelineMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/animation.gsap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/contact_custom.js"></script> 

<!-- <--------------------------syj------------>
<!-- <script src="/scripts/syj_script/reviewList/list.js"></script> -->
<script src="http://localhost:8081/kostaProject1/scripts/syj_script/reviewList/list.js"></script>
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css"	rel="stylesheet">
<script	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>
	
	
<style type="text/css">
h1 {
	font-size: 300%;
	margin-top: 3%;
	margin-bottom: 1%;
	text-align: center;
}

.hotel_name {
	width: 5%;
	margin-bottom: 2%;
}
</style>

<%-- <%
	ReviewDao dao = ReviewDao.getInstance();
	List<Review_Board>list = dao.review_list();
	request.setAttribute("list", list);
	
	
%> --%>
</head>
<body>
	<%@include file="../sub_page/header_menu.jsp"%>


	<!-- Contact -->
	<%-- form의 textarea에 summernote 적용 --%>
<!-- 	<secion id="wrap"> -->
<!-- 		<section id="first"> -->
	<h1>후기 작성 가능 목록</h1>
	
		
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container" id="list_container">

			<table class="check_tg">
				  <tr>
				    <th class="check_tg-s6z2" colspan="5" width="800px">후기 작성 가능 목록</th>
				  </tr>
				  <c:forEach var="booking" items="${list}">
				  <tr>
				  	<form action="review_insertFormAction.do" method="post">
				  	<input type="hidden"  value="${booking.booking_num}" name="booking_num">
				  	<input type="hidden"  value="${booking.h_no}" name="h_no">
				  	<input type="hidden"  value="${booking.stay_day}" name="stay_day">
				    <td class="check_tg-5hgy">${booking.booking_num}</td>
				   <td class="check_tg-5hgy">호텔번호: ${booking.h_no}</td>
				  <!--   <td class="check_tg-5hgy" id="h_name"></td> -->
				    <td class="check_tg-5hgy">${booking.start_day}~${booking.end_day}</td>
				    <td class="check_tg-5hgy">${booking.stay_day}일</td>
				    <td class="check_tg-hmp3"><input type="submit" value="후기작성"/></td>
				  	
				  	</form>
				  </tr>
				  </c:forEach>
				</table>
					<!-- <a href="review_list.do">후기 목록</a> -->
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
					
		</div>
	</section>
				



	</secion>

	<%@include file="../sub_page/footer.html"%>
</body>
</html>