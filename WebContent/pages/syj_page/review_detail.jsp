<%-- <%@page import="yanoll.models.vo.Review_Board"%>
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
	href="../../styles/common/bootstrap4/bootstrap.min.css">
<link
	href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css"
	href="../../styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css"
	href="../../styles/gng_style/gng_main.css">
<script src="../../scripts/common/jquery-3.2.1.min.js"></script>
<script src="../../styles/common/bootstrap4/popper.js"></script>
<script src="../../styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/common/greensock/TweenMax.min.js"></script>
<script src="../../plugins/common//greensock/TimelineMax.min.js"></script>
<script src="../../plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/common//greensock/animation.gsap.min.js"></script>
<script src="../../plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/common//easing/easing.js"></script>
<script src="../../plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="../../scripts/common/contact_custom.js"></script>
summernote 라이브러리 추가
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link
	href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

<script src="../../scripts/syj_script/reviewList/list.js"></script> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
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
	<h1>후기 디테일</h1>
	<div>
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="table_container" align="center">
			<table class="tg" width="800" align="center">
				  <tr>
				    <td class="tg-0pky">제목</td>
				    <td class="tg-0pky" colspan="3">${board.r_title}</td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">호텔명</td>
				    <td class="tg-0pky">${board.hotle_name}</td>
				    <td class="tg-0pky">숙박일수</td>
				    <td class="tg-0pky">${board.number_of_stay_days}일</td>
				  </tr>
				  <tr>
				    <td class="tg-0pky">${board.r_grade}</td>
				    <td class="tg-0pky">${board.id}</td>
				    <td class="tg-0pky" colspan="2">
				    	<fmt:parseDate var="dateString" value="${board.r_redate }" pattern="yyyy-MM-dd"></fmt:parseDate>
				   		<fmt:formatDate value="${dateString }" pattern="yy-MM-dd"/>
				    </td>
				  </tr>
				  <td>메인 이미지</td>
				  <tr>
				  	<td><img src="images/pages/review_main_img/${board.r_fname}"></img></td>
				  </tr>
				  <tr>
				    <td class="tg-0pky" colspan="4">${board.r_content}</td>
				  </tr>
			</table>	
			<a >수정</a>
			<a href="review_deleteAction.do?r_no=${board.r_no}">삭제</a><br>
			<a href="review_list.do">목록</a>
		</div>
		
		
	<%@include file="../sub_page/footer.html"%>
</body>
</html>