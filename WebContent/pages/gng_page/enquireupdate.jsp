<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/contact_custom.js"></script>
<script type="text/javascript" src="http://localhost:8081/kostaProject1/scripts/gng_script/enquire_sc.js"></script>
<title>Insert title here</title>
</head>
<body>
<style type="text/css">

</style>


</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


	<!-- Contact -->

                     <h1>1:1문의</h1>
					<div class="contact_form_container">
						<form action="GngUpdateEnqAction.do" method="post" id="contact_form" class="clearfix">
						<a class="enq_list" href="GngListAction.do" id="contact_send_btn" class="contact_send_btn trans_200" >나의문의내역</a>
						<select class="hotel_name" name="hotel_name" id="hotelname" >
						
							<option>문의호텔</option>
							<option value="파라다이스">파라다이스</option>
							<option value="코모도">코모도</option>
							<option value="라마다프라자광주">라마다프라자광주</option>
							<option value="홀리데이인광주">홀리데이인광주</option>
							<option value="호텔인터불고">호텔인터불고</option>
							<option value="골든튤립스카이베이경포">골든튤립스카이베이경포</option>
							<option value="세인트존스경포">세인트존스경포</option>
							<option value="그랜드하야트서울">그랜드하야트서울</option>
							<option value="롯데시티">롯데시티</option>
							<option value="제주신라">제주신라</option>
							
							</select>
							<br>
							
							<input id="contact_input_subject" class="contact_input contact_input_subject" type="text" name="e_title" >
							<textarea id="contact_input_message" class="contact_message_input contact_input_message" type="text" name="e_contents" ></textarea>
							<input id="hotelname" type="hidden" name="hotel_name">
							<input id="contact_input_subject" class="contact_input contact_input_subject" type="hidden" name="e_seq" value="${board.e_seq}">
							<input id="contact_send_btn" type="submit" class="contact_send_btn trans_200" value="등록">
					        
					        
					        
					     </form>
						
					</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>
