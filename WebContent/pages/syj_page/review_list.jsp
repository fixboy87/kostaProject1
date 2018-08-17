<%@page import="yanoll.models.vo.Review_Board"%>
<%@page import="java.util.List"%>
<%@page import="yanoll.models.dao.ReviewDao"%>
<%@page import="yanoll.models.vo.Review_listModel"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%-- summernote 라이브러리 추가 --%>
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

<script
	src="../../scripts/syj_script/reviewList/list.js"></script>

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
	<h1>후기 게시판 목록</h1>
	<div>
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container" id="list_container">

		<header class="header"> 
			<input type="button" value=" 전체보기 ">
			<input type="button" value=" 포토 "> 
			<form action="review_list.jsp">
				<select name="선택">
					<option value="작성자">작성자</option>
					<option value="제목">제목</option>
					<option value="제목+내용">제목+내용</option>
					<option value="호텔명">호텔명</option>
				</select>
				<input type="text" size="15">
				<input type="submit" value="검색">
			</form>	
			<select name="정렬">
				<option value="최신순">최신순</option>
				<option value="평점순">평점순</option>
				<option value="최신순">최신순</option>
			</select>
			<table class="list_table">
				<tr>
					<td rowspan="4" class="img_td">img</td>
					<td class="table_top">제목</td>
					<td colspan="3" class="table_top"></td>
					<td rowspan="2" class="table_top">작성자</td>
					<td rowspan="2" colspan="2" class="table_edge1"></td>
				</tr>
				<tr>
					<td>평점</td>
					<td colspan="3"></td>
				</tr>
				<tr>
					<td>호텔명</td>
					<td></td>
					<td>숙박일수</td>
					<td></td>
					<td>등록일</td>
					<td colspan="2" class="table_right"></td>
				</tr>
				<tr>
					<td class="table_bottom">내용</td>
					<td colspan="3" class="table_bottom"></td>
					<td class="table_bottom">조회수</td>
					<td class="table_edge2"></td>
				</tr>
			</table>
			<a href="">후기 작성</a> 
			</header>
			<div>
				<h1>옵션선택</h1>
				<select name="옵션1(지역별)" class="option1">
					<option>옵션1(지역별)</option>
					<option >서울</option>
					<option value="부산">부산</option>
					<option value="광주">광주</option>
					<option value="대구">대구</option>
					<option value="강원도">강원도</option>
					<option value="제주도">제주도</option>
				</select>
				<select name="옵션2(지역별)"  id="1-1">
					<option>옵션2(지역별)</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="1">
					<option>옵션2(지역별)</option>
					<option>그랜드하얏트 서울</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="2">
					<option>옵션2(지역별)</option>
					<option>파라다이스 호텔</option>
					<option>코모도 호텔</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="3">
					<option>옵션2(지역별)</option>
					<option>라마다 프라자 호텔</option>
					<option>홀리데이 인 광주</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="4">
					<option>옵션2(지역별)</option>
					<option>인터볼고 호텔</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="5">
					<option>옵션2(지역별)</option>
					<option>스카이베이 호텔</option>
					<option>세인트존스 호텔</option>
				</select>
				<select name="옵션2(지역별)" class="option2" id="6">
					<option>옵션2(지역별)</option>
					<option>롯데 시티 호텔</option>
					<option>제주 신라 호텔</option>
				</select>
				
			</div>

		</div>
	</div>


	<%@include file="../sub_page/footer.html"%>
</body>
</html>