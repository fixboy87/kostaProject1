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
<link rel="stylesheet" type="text/css" href="../../styles/common/bootstrap4/bootstrap.min.css">
<link href="../../plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/syj_contact.css">
<link rel="stylesheet" type="text/css" href="../../styles/gng_style/gng_main.css">
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.4/summernote.js"></script>

<script src="../../scripts/syj_script/form_rating/jquery.rating-stars.js"></script>

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
<h1>후기 게시판 목록</h1>
	<div >
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		
		<!-- <div class="w3-margin-top w3-main"	> -->
		<div class="contact_form_container">
			
		</div>
	</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>