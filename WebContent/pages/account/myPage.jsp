<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String type = request.getParameter("type");
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/account/registerForm.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link href="http://localhost:8081/kostaProject1/plugins/common/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/animate.css">
<link href="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/main_styles.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/responsive.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/account/registerForm.css">
<style type="text/css">
.myPageMenuCylinder {
	/* height: 600px; */
	margin-top: 30px;
	margin-right: auto;
	margin-left: 30px;
	float: left;
	padding: 30px 30px 10px 30px;
}
.myPageMenuCylinder>div {
	display: block;
	margin-bottom: 20px;
}
.iEnquire {
	background-color: #fe435b;
}
.iEnquire>a {
	color: white !important;
    font-weight: bold;
    text-align: center;
}
.myPageCylinder {
	margin-top: 200px;
	margin-right: auto;
	margin-left: auto;
	width: 1000px;
	position: relative;
}
.myPageContentCylinder {
	width: 65%;
	margin-top: 30px;
	margin-right: 30px;
	float: right;
	padding: 30px 30px 10px 30px;
	margin-bottom: 50px;
}
.mypage_section {
	display: block;
    margin-bottom: 20px;
    /* height: 30px; */
    padding: 7px;
    width: fit-content;
    border-width: thin;
}
.mypage_section>div {
	display: inline-block;
}
.mypage_text {
	width: 100px;
}
.mypage_section input {
	width: 300px;
    height: 30px;
    border-bottom: solid;
    border-width: thin;
    border-color: grey;
}
</style>
</head>

<body>
	<input type="hidden" id="uid" name="uid" val="<%=(String)session.getAttribute("id")%>"/>
	<input type="hidden" id="type" name="type" val="<%=(String)session.getAttribute("type")%>"/>
	<input type="hidden" id="name" name="name" val="<%=(String)session.getAttribute("name")%>"/>

	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
			
			<div class="myPageCylinder">
				<div class="myPageMenuCylinder">
					<div class="button iEnquire"><a href="#">1:1문의</a></div>			
					<div class="button iEnquire"><a href="#">구매내역</a></div>			
					<div class="button iEnquire"><a href="#">회원정보</a></div>			
					<div class="button iEnquire"><a href="#">회원탈퇴</a></div>			
				</div>
				<div class="myPageContentCylinder">
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>ID : </p></div>
						</div>
						<div class="myPage_id">
							<input type="text" name="mypage_id" val="" readonly="readonly"/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>비밀번호 : </p></div>
						</div>
						<div class="myPage_password">
							<input type="password" name="mypage_password" val=""/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>이메일 : </p></div>
						</div>
						<div class="myPage_email">
							<input type="text" name="mypage_email" val=""/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>이름 : </p></div>
						</div>
						<div class="myPage_text">
							<input type="text" name="mypage_name" val="" readonly="readonly"/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>전화번호 : </p></div>
						</div>
						<div class="myPage_text">
							<input type="text" name="mypage_tel" val=""/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>생년월일 : </p></div>
						</div>
						<div class="myPage_text">
							<input type="text" name="mypage_birth" val="" readonly="readonly"/>
						</div>
					</div>
					<div class="mypage_section">
						<div class="mypage_text">
							<div><p>성별 : </p></div>
						</div>
						<div class="myPage_text">
							<input type="text" name="mypage_gender" val="" readonly="readonly"/>
						</div>
					</div>
				</div>
			</div>
	</div>
</div>
<%@include file="../../pages/sub_page/footer.html"%>

<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/moment.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/pignose.calendar.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/custom.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/account/registerForm.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/menuEffect.js" type="text/javascript"></script>
<script type="text/javascript">
</script>
</body>
</html>