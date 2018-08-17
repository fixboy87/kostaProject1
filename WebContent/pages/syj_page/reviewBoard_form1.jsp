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
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


	<!-- Contact -->

                     <h1>후기 작성</h1>
					<div class="contact_form_container">
						<form action="insertReviewAction.do" method="post"
						enctype="multipart/form-data" id="contact_form" class="clearfix">
							<div class="contact_set_container">
								작성자  <a id="contact_set" class="contact_input contact_input_subject" name="name" placeholder="작성자">작성자</a><br>
							</div>
							<div class="contact_set_container">
								호텔명 <a id="contact_set" class="contact_input contact_input_subject">그랜드 하얏트 서울</a>  숙박일수 <a id="contact_set" class="contact_input contact_input_subject">3일</a><br>
							</div>
							제목  <input id="contact_input_title" class="contact_input contact_input_subject" type="text" name="r_title" placeholder="제목"><br>
							평점   <input id="contact_input_writer" class="contact_input contact_input_subject" type="number" name="r_grade" placeholder="평점"><br>
							이미지 첨부 <input  id="contact_input_img" class="contact_input contact_input_subject" type="file" name="r_fname" placeholder="이미지를 첨부해주세요."><br>
							
							<textarea id="contact_input_message" class="contact_message_input contact_input_message" type="text" name="r_content" placeholder="내용"></textarea>
							<button id="contact_send_btn" type="submit" class="contact_send_btn trans_200" value="Submit">보내기</button>
						</form>
					</div>
					
					<%-- form의 textarea에 summernote 적용 --%>
	<div>
		<div>
			<%--로그인체크 <%@ include file="/home/sidebar.jsp"%> --%>
		</div>
		<div class="w3-margin-top w3-main" style="margin-left: 340px; margin-right: 40px; width: 60%;">
			<form action="/expro/BoardWrite.do" method="post">
			
				<div class="w3-center w3-text-white w3-round">
					<h3 style="text-transform: uppercase">${ param.section }</h3>
				</div>
				
				<div class="contact_set_container">
								작성자  <a id="contact_set" class="contact_input contact_input_subject" name="name" placeholder="작성자">작성자</a><br>
							</div>
							<div class="contact_set_container">
								호텔명 <a id="contact_set" class="contact_input contact_input_subject">그랜드 하얏트 서울</a>  숙박일수 <a id="contact_set" class="contact_input contact_input_subject">3일</a><br>
							</div>
							제목  <input id="contact_input_title" class="contact_input contact_input_subject" type="text" name="r_title" placeholder="제목"><br>
							평점   <input id="contact_input_writer" class="contact_input contact_input_subject" type="number" name="r_grade" placeholder="평점"><br>
							이미지 첨부 <input  id="contact_input_img" class="contact_input contact_input_subject" type="file" name="r_fname" placeholder="이미지를 첨부해주세요."><br>
							
				
				
				<div>
					<textarea name="board_content" id="content"></textarea>
				</div>
				
				<div align="center">
					<input type="hidden" name="section" value="${ param.section }">
					<input type="hidden" name="id" value="${ id }">
					<input type="submit" value="확인" class="w3-button w3-white w3-round-small"> &nbsp;
					<input type="button" value="취소" class="w3-button w3-white w3-round-small" onclick="history.go(-1)">
				</div>
			</form>
		</div>
	</div>
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>