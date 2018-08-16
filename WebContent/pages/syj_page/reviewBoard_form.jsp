<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
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
<!--  jQuery, 부트 스트랩 및 WYSIHTML5 스크립트 포함 -->
<script src="../../scripts/syj_script/textEditor/wysihtml5-0.3.0.js"></script>
<script src="../../scripts/syj_script/textEditor/jquery-1.7.2.min.js"></script>
<script src="../../scripts/syj_script/textEditor/prettify.js"></script>
<script src="../../scripts/syj_script/textEditor/bootstrap.min.js"></script>
<script src="../../scripts/syj_script/textEditor/bootstrap-wysihtml5.js"></script>

<script>
$('.textarea').wysihtml5();
</script>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/bootstrap.min.css"></link>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/prettify.css"></link>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/bootstrap-wysihtml5.css"></link>

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
</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


	<!-- Contact -->

                     <h1>후기 게시판</h1>
					<div class="review_form_container" id>
						<form action="insertReviewAction.do" method="post"
						enctype="multipart/form-data" id="contact_form" class="clearfix">
							<select class="hotel_name" name="hotel_name" >
							</select>
							<input id="contact_input_subject" class="contact_input contact_input_subject" type="text" name="e_contents" placeholder="제목">
		
							<textarea class="textarea" id="contact_message_input contact_input_message" type="text" name="e_contents" placeholder="내용"></textarea>
			
							<button id="contact_send_btn" type="submit" class="contact_send_btn trans_200" value="Submit">보내기</button>
						</form>
					</div>
			
					
					
					
<%@include file="../sub_page/footer.html" %>

</body>
</html>