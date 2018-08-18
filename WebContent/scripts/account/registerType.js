$(document).ready(function() {

	$('.join_divi span').click(function() {
		$buttonClicked = $(this);
		$command = $buttonClicked.find('a').html();
		var typeSelect = null;
		
		if($command === "일반회원 가입하기") {
			$('#typeSelect:firstChild()').attr("value", "personalType");
			location.href = "personalRegisterForm.do";
			
		} else if($command === "기업회원 가입하기") {
			$('#typeSelect:lastChild()').attr("value", "enterpriseType");
			location.href = "enterpriseRegisterForm.do";
		
		}
	});
});


