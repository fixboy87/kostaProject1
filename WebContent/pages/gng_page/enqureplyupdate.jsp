<%@page import="yanoll.mapper.BoardMapper"%>
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

							<div class="contact_form_container">
							<form action="GngUpdateEnqReplyAction.do" method="post" id="contact_form" class="clearfix">
							<textarea id="contact_input_message" class="contact_message_input contact_input_message" type="text" name="r_contents" ></textarea>
							<input id="contact_input_subject" class="contact_input contact_input_subject" type="hidden" name="e_seq" value="${board.e_seq}">
							<input id="contact_send_btn" type="submit" class="contact_send_btn trans_200" value="등록">
					
					        
					     </form>
						
					</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>
