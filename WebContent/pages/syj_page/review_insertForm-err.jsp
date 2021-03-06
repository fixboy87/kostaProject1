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
<script src="http://localhost:8081/kostaProject1/scripts/syj_script/form_rating/jquery.rating-stars.js"></script>
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
			<form action="review_insertAction.do" method="post"  id="contact_form" class="clearfix" enctype="multipart/form-data">
			
				<%-- <div class="w3-center w3-text-white w3-round">
					<h3 style="text-transform: uppercase">${ param.section }</h3>
				</div>  --%>
				
				<div class="contact_set_container">
				<input type="hidden" name="p_no" value="${board.booking_num}">
				<input type="hidden" name="userNo" value="${board.userNo}">
					작성자  <a id="contact_set" class="contact_input contact_input_subject" >${board.id}</a><br>
								<input type="hidden" name="id" value="${board.id}">
				</div>
				
				<div class="contact_set_container">
				<input type="hidden" name="start_day" value="${board.stay_day}">
				<input type="hidden" name="hotle_name" value="${board.hotle_name}">
					호텔명 <a id="contact_set" class="contact_input contact_input_subject" >${board.hotle_name}</a>  
					숙박일수 <a id="contact_set" class="contact_input contact_input_subject">${board.stay_day}일</a><br>
				</div>
				
				제목  <input id="contact_input_title" class="contact_input contact_input_subject" type="text" name="r_title" placeholder="제목"><br>
				평점 <div class="rating-stars block" id="more-rating">
						<input type="hidden" readonly="readonly" class="rating-value" name="r_grade"  id="rating-stars-value">
						<div class="rating-stars-container">
						  <div class="rating-star">
						      <i class="fa fa-star"></i>
						  </div>
						  <div class="rating-star">
						      <i class="fa fa-star"></i>
						  </div>
						  <div class="rating-star">
						      <i class="fa fa-star"></i>
						  </div>
						  <div class="rating-star">
						      <i class="fa fa-star"></i>
						  </div>
						  <div class="rating-star">
						      <i class="fa fa-star"></i>
								  </div>
						 </div>
					</div>
				이미지 첨부 <input  id="contact_input_img" class="contact_input contact_input_subject" type="file" name="r_fname" placeholder="이미지를 첨부해주세요."><br>
								
				<div>
					<!-- <textarea name=" r_content" ></textarea> -->
					<textarea name="r_content" id="content"></textarea>
				</div>
				
				<div class="select_button" align="center">
					<input type="hidden" name="section" value="${ param.section }">
					<input type="submit" value="작성" class="w3-button w3-white w3-round-small"> &nbsp;
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
				</div>
				
			</form>
		</div>
	</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>