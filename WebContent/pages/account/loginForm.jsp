<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String type = request.getParameter("type");
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
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/account/main_styles.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/responsive.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/account/registerForm.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/account/loginForm.css">
</head>

<body>
	<div class="super_container margin_top_control">
	<%@ include file="../../pages/sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
           <main class="container-comm">
                <article class="contents">
                    <div class="member-content">
                        <section class="login-area">
                            <h3>로그인</h3>

                            <form id="joinMemberPc" action="loginAction.do" method="post" data-member-form="true" class="form-group form-w410">

                                <fieldset id="joinFieldset">
                                    <legend class="sc-out">로그인</legend>
                                    <div class="login-cont">
                                        <div class="inp-txt-member">
                                            <input type="text" name="id" value="" placeholder="아이디를 입력해주세요." title="아이디를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput1" name="password" placeholder="비밀번호를 입력해주세요." title="비밀번호 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                        	<select name="loginType" class="widthExpand" placeholder="가입하신 계정의 유형을 선택해주세요.">
                                        		<option value="personal">일반유저</option>
                                        		<option value="enterprise">사업자유저</div>
                                        	</select>
                                        </div>

                                    <button type="submit" name="button" class="button right_align" id="btnToJoinEnd">로그인</button>
                                </fieldset>
                            </form>
                        </section>
                    </div>
                </article>
            </main>

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
    $(function() {
        var $pw = $('.inp-password')
        $pw.on('click focus', function() {
            $(this).siblings('label').hide()
        });
        $pw.on('blur', function() {
            $this = $(this)
            if ($.trim($this.val()).length === 0) {
                $this.siblings('label').show()
            }
        });
    });
</script>
</body>
</html>