$(document).ready(function() {

	$('.join_divi span').click(function() {
		$buttonClicked = $(this);
		$command = $buttonClicked.find('a').html();
		if($command === "일반회원 가입하기") {
			location.href = "personalRegisterForm.do";
		} else if($command === "기업회원 가입하기") {
			location.href = "enterpriseRegisterForm.do";
		}
	});
});


