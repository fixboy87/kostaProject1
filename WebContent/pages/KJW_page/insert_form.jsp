<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>글쓰기</h3>
	<hr>
	<form action="insertAction.jsp" method="post"
		enctype="multipart/form-data">
		<!-- enctype="multipart/form-data"  파일을 넘겨주는 코드 -->
		<!-- 파일업로드는 이문서부터  요렇게 수정-->
		작성자 : <input type="text" name="writer"><br> 
		제목 : <input type="text" name="title"><br> 파일 : <input type="file" name="fname"><br> 내용 <br>
		<textarea rows="6" cols="70" name="contents"></textarea>
		<br> <input type="submit" value="등록">
	</form>

</body>
</html>


<!-- 정보입력창 -->

