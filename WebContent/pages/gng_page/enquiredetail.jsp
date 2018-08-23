<%@page import="yanoll.models.dao.Enquire_BoardDao"%>
<%@page import="yanoll.mapper.BoardMapper"%>
<%@page import="yanoll.models.vo.Enquire_Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_contact.css">
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

<style type="text/css">
.enquire_detail{
    width: 80%;
	height: 41px;
	border: solid 2px #dbdbdb;
	padding-left: 20px;
	margin-left :10%;
	margin-bottom: 5%;
	margin-top:5%;
	outline: none;
	text-align: center;

}

</style>


</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>

   <table class="enquire_detail" border="1">
	<thead>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px;"><h5>글번호</h5></td>
	<td colspan="3"><h5>${board.e_seq}</h5></td>
	</tr>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px; "><h5>제목</h5></td>
	<td colspan="3"><h5>${board.e_title}</h5></td>
	</tr>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px; "><h5>작성자</h5></td>
	<td colspan="3"><h5>${board.id}</h5></td>
	</tr>
	<tr>
	<td style="vertical-align :middle; min-height: 20%; background-color: #fafafa; color: #000000; width: 80px; "><h5>내용</h5></td>
	<td colspan="3" style="text-align: left"><h5>${board.e_contents}</h5></td>
	</tr>
	</thead>
	</table>
	
	
	<%@include file="../gng_page/enqreplylist.jsp" %>		
	<a class="enquire" href="GngDeleteEnquire.do?e_seq=${board.e_seq}">삭제</a>
	
    <a class="enq_list" href="GngReplyFormAction.do?e_seq=${board.e_seq}" id="contact_send_btn" class="contact_send_btn trans_200" >답장</a>
									
									
																		
					
					      			        
					
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>