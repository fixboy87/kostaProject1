<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../../scripts/syj_script/textEditor/wysihtml5-0.3.0.js"></script>
<script src="../../scripts/syj_script/textEditor/jquery-1.7.2.min.js"></script>
<script src="../../scripts/syj_script/textEditor/prettify.js"></script>
<script src="../../scripts/syj_script/textEditor/bootstrap.min.js"></script>
<script src="../../scripts/syj_script/textEditor/bootstrap-wysihtml5.js"></script>

<script>
$('.textarea').wysihtml5();
</script>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/bootstrap.min.css"></link>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/prettify.css"></link>
<link rel="stylesheet" type="text/css" href="../../styles/syj_style/textEditor/bootstrap-wysihtml5.css"></link>
</head>
<body>
<textarea class="textarea" id="contact_message_input contact_input_message" type="text" name="e_contents" placeholder="내용"></textarea>
</body>
</html>