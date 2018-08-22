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
</head>

<script type="text/javascript">
 
 function Button_Click(){
	 var emailCheck = /^[_0-9a-zA-Z-]+@[0-9a-zA-Z-]+(.[_0-9a-zA-Z]+)*$/;	/* 이메일 */	
	 var idCheck = /^[a-z][a-z0-9_$@#]{4,14}$/;								/* 아이디 */
	 var nameCheck = /^[\uac00-\ud7a3]*$/;									/* 이름 */
	 var passwordCheck = /^[a-zA-Z0-9]{7,20}$/;	/* 패스워드 */
	 var telCheck = /^\d{11}$/;					/* 연락처 */
	 
	 var f = document.fmt;  // 이문서의 fmt(아래 form테그중 name이 fmt인 태그)를 f에 넣고
	
	 var password = null;
	 var passwdConfirm = null;
	 //메소드체인
	//이메일
	if(! emailCheck.test(f.email.value)){ // 
		alert("메일양식이 잘못됐습니다. 다시 입력해주세요");
		f.email.focus();
		return false; 
	}
	// 아이디
	if(! idCheck.test(f.id.value)){ // ^ : 앞에만 검사, $ : 뒤에만 검사, i 대소문자 구분 안함(없으면 소문자만 가능하다)
		alert("아이디 첫문자는 영문자이고 5~15자만 가능");
		f.id.focus();
		return false; 
	}
	// 연락처
	if(! telCheck.test(f.tel.value)){
		alert("전화번호 양식에 맞춰 입력해주세요");
		f.tel.focus();
		return false; 
	}		
	// 이름
	if(! nameCheck.test(f.name.value)){ //g: 완전일치, ^앞 $뒤 *0개이상, uac00~ud7a3은 한글 코드값  , gi대소문자 구분없이 완전일치
		alert("이름을 정확히 입력해주세요");
		f.name.focus();
		return false; 
	}
	//패스워드검사(영문자와 1자 이상의 숫자특수문자. 8~20)
	if(!passwordCheck.test(f.password.value)){
		alert("패드워드는 특수문자가 필요 ");
		password=(f.password.value);
		alert(password); 
		return false; 
	}else{
		password=(f.password.value);
		return false;
	}

	
	passwdConfirm=(f.passwdConfirm.value);
	alert(passwdConfirm);
	 
	
	if(!password.equals(passwdConfirm)){
		alert("입력하신 패스워드가 서로 다릅니다.");
		return false;
	}
} 
    
 
</script>

<body>
	<div class="super_container margin_top_control">
	<%@ include file="../sub_page/header_menu.jsp"%>

		<div id="content" class="content_wrap">
           <main class="container-comm">
                <article class="contents">
                    <div class="member-content">
                        <section class="login-area">
                            <h3>회원가입</h3>


                            <form name="fmt" id="joinMemberPc" action="registerFormAction2.do" method="post" data-member-form="true" class="form-group form-w410" onsubmit="return Button_Click();">  <!-- 태그안에 onsubmit="return Button_Click();> <!--내용이 있어야 다음페이지로 안넘어감 강사님 수정해주심 -->                                
                            

                                <fieldset id="joinFieldset">
                                    <legend class="sc-out">회원가입 폼</legend>

                                    <div class="login-cont">
                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput0" name="email" value="" placeholder="이메일을 입력해주세요." title="아이디(이메일)를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput1" name="id" value="" placeholder="닉네임을 입력하세요.(5~15자)" title="닉네임을 입력(2~8자)" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="number" id="mInput2" name="tel" value="" placeholder="핸드폰번호를 입력하세요." title="전화번호를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="text" id="mInput3" name="name" value="" placeholder="이름을 입력하세요." title="전화번호를 입력" autocomplete="off">
                                        </div>

                                        <div class="inp-txt-member">
                                            <input type="password" id="mInput4" name="password" value="" class="inp-password">
                                            <label class="placeholder-div" title="1234">비밀번호를 입력하세요(8~20자)</label>
                                        </div>
                                        <div class="inp-txt-member">
                                            <input type="password" id="mInput5" name="passwdConfirm" value="" class="inp-password">
                                            <label class="placeholder-div">비밀번호를 한번 더 입력하세요.</label>
                                        </div>
                                    </div>
                                    <input type="hidden" id="registerType" name="type" value="<%=type%>"/>
                                    <input type="submit" name="button" class="button right_align" id="btnToJoinEnd" value="다음"></input>
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
</script>
</body>
</html>