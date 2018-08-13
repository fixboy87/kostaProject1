<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="registerAction.jsp" method="post">
		ID : <input type="text" name="id">
		Password : <input type="password" name="password">
		E-mail : <input type="email" name="email">
		연락처 : <input type="text" name="tel">
		성 : <input type="text" name="surname">
		이름 : <input type="text" name="first_name">
		성별 : 남 <input type="checkbox" name="sex" value="male">
		여	 <input type="checkbox" name="sex" value="female">
		생년월일 <input type="date" name="date_of_birth">
		<input type="submit" value="SignUp">
	</form>
</body>
</html>