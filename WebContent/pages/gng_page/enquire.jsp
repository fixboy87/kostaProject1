<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/gng_style/gng_contact.css">
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
<style type="text/css">
h1{
font-size: 300%;
margin-top: 3%;
margin-bottom: 1%;
text-align: center;
}

.hotel_name{
width 8%;
margin-bottom: 2%;
}

.enq_list
{
	width: 161px;
	height: 56px;
	background: rgba(254,60,82,1);
	border: none;
	outline: none;
	float: right;
	color: #FFFFFF;
	font-size: 16px;
	font-weight: 500;
	cursor: pointer;	
	
	margin-bottom: 14px;
	text-align: center;
}
</style>


</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


	<!-- Contact -->

                     <h1>1:1문의</h1>
					<div class="contact_form_container">
						<form action="GngInqInsertAction.do" method="post"
						enctype="multipart/form-data" id="contact_form" class="clearfix">
						<a class="enq_list" href="enquire.jsp" id="contact_send_btn" class="contact_send_btn trans_200" >나의문의내역</a>
							<select class="hotel_name" name="hotel_name" id="tt" >
							<option>문의호텔</option>
							<option value="">파라다이스</option>
							<option value="">코모도</option>
							<option value="">라마다프라자광주</option>
							<option value="">홀리데이인광주</option>
							<option value="">호텔인터불고</option>
							<option value="">골든튤립스카이베이경포</option>
							<option value="">세인트존스경포</option>
							<option value="">그랜드하야트서울</option>
							<option value="">롯데시티</option>
							<option value="">제주신라</option>
							
							</select>
							<br>
							
							<input id="contact_input_subject" class="contact_input contact_input_subject" type="text" name="e_contents" placeholder="제목">
							<textarea id="contact_input_message" class="contact_message_input contact_input_message" type="text" name="e_contents" placeholder="내용"></textarea>
							<button id="contact_send_btn" type="submit" class="contact_send_btn trans_200" value="Submit">보내기</button>
							<input type="hidden" name="id">
						</form>
					</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>