<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<secion id="wrap">
		<section id="first">
	<h1>후기 게시판 목록</h1>
	
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container" id="list_container">

			<header class="list"> 
				<input type="button" value=" 전체보기 ">
				<input type="button" value=" 포토 ">
			<form action="review_list.jsp">
				<select name="선택">
					<option value="작성자">작성자</option>
					<option value="제목">제목</option>
					<option value="제목+내용">제목+내용</option>
					<option value="호텔명">호텔명</option>
				</select> <input type="text" size="15"> <input type="submit"
					value="검색">
			</form>
			<select name="정렬">
				<option value="최신순">최신순</option>
				<option value="평점순">평점순</option>
				<option value="최신순">최신순</option>
			</select>

		<div class="table_container">
			<c:forEach var="board" items="${list}">
			<table class="list_table" width="800" >
				<tr>
					<td class="r_no">${board.r_no }</td>
					<td rowspan="4" class="img_td">
						<c:if test="${board.r_fname != null }">
								<c:set var="head" value="${fn:substring(board.r_fname, 0, fn:length(board.r_fname)-4) }"></c:set>
								<c:set var="pattern" value="${fn:substring(board.r_fname, 	fn:length(head) +1, fn:length(board.r_fname)) }"></c:set>
							<c:choose>
								<c:when test="${pattern == 'jpg' || pattern == 'gif' || pattern == 'JPG' || pattern == 'GIF' }">
									<img src="images/pages/review_main_img/${head }_small.${pattern}">
								</c:when>
								<c:otherwise>
									<c:out value="NO IMAGE"></c:out>
								</c:otherwise>
							</c:choose>
						</c:if>
						<c:if test="${board.r_fname==null }">
									<c:out value="NO IMAGE"></c:out>
						</c:if>
					</td>					
					<td class="table_top"><a href="review_deatailAction.do?r_no=${board.r_no }">제목</a></td>
					<td colspan="3" class="table_top">${board.r_title}</td>
					<td class="table_top">작성자</td>
					<td colspan="2" class="table_edge1">${board.id}</td>
				</tr>
				<tr>
					<td>평점</td>
					<td colspan="3">${board.r_grade}</td>
					<td>등록일</td>
					<td class="table_right">
						<fmt:parseDate var="dateString" value="${board.r_redate}" pattern="yyyy-MM-dd"/>
						<fmt:formatDate value="${dateString}" pattern="yy/MM/dd"/> 
					</td>
				</tr>
				<tr class="table_bottom">
					<td>호텔명</td>
					<td>${board.hotle_name }</td>
					<td>숙박일수</td>
					<td>${board.stay_day }</td>
					<td>조회수</td>
					<td colspan="2" class="table_right">${board.r_hitcount }</td>
				</tr>
			</table>
				</c:forEach>
				</div>


			<!-- <a href="review_insertFormAction.do">후기 작성</a> </header> -->
			<a href="review_checkAction.do">후기 작성</a> </header>
			<!-- <input type="button" value="뒤로" class="w3-button w3-white w3-round-small" onclick="history.go(-1)"> -->
			<a href="HotelDetailAction.do?h_no=<%=(Integer)session.getAttribute("h_no")%>">뒤로</a>
			
			
			
	</section>
	<div id="sidebar">

		<h1>옵션선택</h1>
		<select name="옵션1(지역별)" class="option1">
			<option>옵션1(지역별)</option>
			<option value="서울">서울</option>
			<option value="부산">부산</option>
			<option value="광주">광주</option>
			<option value="대구">대구</option>
			<option value="강원도">강원도</option>
			<option value="제주도">제주도</option>
		</select> <select name="옵션2(지역별)" class="option2">
			<option>옵션2(지역별)</option>
		</select>
		<div id="space"></div>
	</div>



	</secion>

	<%@include file="../sub_page/footer.html"%>
</body>
</html>