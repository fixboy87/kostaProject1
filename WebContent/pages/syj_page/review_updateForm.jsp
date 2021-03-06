<%@page import="yanoll.models.vo.Review_Board"%>
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
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
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
<%-- summernote 라이브러리 추가 --%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

<script src="http://localhost:8081/kostaProject1/scripts/syj_script/form_rating/jquery.rating-stars.js"></script>

<script>
	<%-- form의 textarea에 summernote 적용 --%>
	$(document).ready(function() {
		$('#content').summernote({
			height: 700,
			fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
			fontNamesIgnoreCheck : [ '맑은고딕' ],
			focus: true
		});
	});
	$(".rating-stars").ratingStars();
</script>
<%-- summernote 라이브러리 추가 END --%>

<style type="text/css">
h1{
font-size: 300%;
margin-top: 3%;
margin-bottom: 1%;
text-align: center;
}

.hotel_name{
width :5%;
margin-bottom: 2%;
}
</style>

<!--  rating_star -->
<script type="text/javascript">
$(function() {
  $(".rating-star").on("click", function () {  
	
	var ss =$('#rating-stars-value').val();

	alert(ss); 
	

	});
});

</script>
<%-- <%
	
	Review_Board board = new Review_Board();
	board.setId("syj85");
	board.setHotle_name("롯데시티호텔");
	board.setStay_day(1);
	board.setUserNo(1);
	board.setBooking_num(1);
	
	request.setAttribute("board", board);
%> --%>

</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


<!-- Contact -->
<%-- form의 textarea에 summernote 적용 --%>
<h1>후기 작성</h1>
	<div >
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container">
			<form action="review_updateAction.do" method="post"  id="contact_form" class="clearfix" >
			
		
				<input type="hidden" name="r_no" value="${board.r_no}">
				
				<div class="contact_set_container">
					작성자  <a id="contact_set" class="contact_input contact_input_subject" >${board.id}</a><br>
				</div>
				
				<div class="contact_set_container">
					호텔명 <a id="contact_set" class="contact_input contact_input_subject" >${board.hotle_name}</a>  
					숙박일수 <a id="contact_set" class="contact_input contact_input_subject">${board.stay_day}일</a><br>
				</div>
				
				제목  <input id="contact_input_title" class="contact_input contact_input_subject" type="text" name="r_title" placeholder="${board.r_title }"><br>
				평점  <a>${board.r_grade}점</a><br>
				MAIN IMAGE 
					 <c:choose>
					  	<c:when test="${board.r_fname!=null }">
						  		<img src="images/pages/review_main_img/${board.r_fname}" ></img>
					  	</c:when>
					  	<c:when test="${board.r_fname==null }">
					  		<c:out value="NO IMAGE"></c:out>
					  	</c:when>
				  	</c:choose>				
				<div>
					<!-- <textarea name=" r_content" ></textarea> -->
					<textarea name="r_content" id="content" >${board.r_content }</textarea>
				</div>
				
				<div class="select_button" align="center">
					<input type="hidden" name="section" value="${ param.section }">
					<input type="submit" value="수정" class="w3-button w3-white w3-round-small"> &nbsp;
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
				</div>
				
			</form>
		</div>
	</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>