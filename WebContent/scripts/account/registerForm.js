$(document).ready(function() {
	$('.login-cont div').click(function() {
		$(this).find('input').focus();
	});
	
	$('.login-cont button').click(function() {
		//id 입력여부 확인
		
		
		$('#joinMemberPc').submit();
		
	});
});

