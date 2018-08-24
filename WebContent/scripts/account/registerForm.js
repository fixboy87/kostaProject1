$(document).ready(function() {
	$('.login-cont div').click(function() {
		$(this).find('input').focus();
	});
	
	$('.login-cont button').click(function() {
		//id 입력여부 확인
		
		$('#joinMemberPc').submit();
	});
	
	//validation check
	var idCheck = /^[a-zA-Z][a-zA-Z0-9]{6,14}$/;
	var passCheck = /^[a-zA-Z0-9]{6,14}$/;
	
	$('form#loginUser button').click(function(event) {
		$checkedField = 
		$checkId = $("input[name='id']");
		if(!idCheck.test($checkId.val())) {
			
			$checkId.focus();
			event.preventDefault();
		}
		//id focus
		//stop propagation
		//return false;
		
		//아이디 확인 : 특수문자 제외
	})
	
});

