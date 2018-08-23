<%@page import="yanoll.models.dao.Enquire_BoardDao"%>
<%@page import="yanoll.mapper.BoardMapper"%>
<%@page import="yanoll.models.vo.Enquire_Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="http://localhost:8081/kostaProject1/styles/gng_style/gng_main.css">
<script src="http://localhost:8081/kostaProject1/scripts/common/jquery-3.2.1.min.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/popper.js"></script>
<script src="http://localhost:8081/kostaProject1/styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common/greensock/TweenMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/TimelineMax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/animation.gsap.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//easing/easing.js"></script>
<script src="http://localhost:8081/kostaProject1/plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="http://localhost:8081/kostaProject1/scripts/common/contact_custom.js"></script>

<style type="text/css">
h1{
font-size: 300%;
margin-top: 3%;
margin-bottom: 1%;
text-align: center;
}

.Enquire_list
{
	width: 80%;
	height: 41px;
	border: solid 2px #dbdbdb;
	padding-left: 20px;
	margin-left :10%;
	margin-bottom: 19px;
	outline: none;
	text-align: center;
}
.enquire_search{
margin-top : 2%;
margin-left: 80%;
margin-bottom: 1%;

}
</style>


</head>
<body>
<%@include file="../sub_page/header_menu.jsp" %>


	<!-- Contact -->
     <h1>문의내역</h1>
                    
	<table width="300" border="1" class="Enquire_list">	
		<tr>
			<td width="50px">번호</td>
			<td width="70px">호텔</td>
			<td width="400px">제목</td>
			<td width="140px">ID</td>
			<td width="140px">작성일</td>
		</tr>
		
		<c:forEach var="Enquire_Board" items="${listModel}">
		<tr>
		<td>${Enquire_Board.e_seq}</td>
		<td>${Enquire_Board.hotel_name}</td>
		<td><a href="GngDetailAction.do?e_seq=${Enquire_Board.e_seq}">${Enquire_Board.e_title}</a></td>
		<td>${Enquire_Board.id}</td>
		<td>${Enquire_Board.e_date}</td>
		</tr>
		</c:forEach>
		</table>
		
		 <%-- <c:if test="${listModel.startPage>5} ">
		<a href="GngListAction.do?pageNum=${listModel.startPage-1}" >[이전]</a>
		</c:if>	
		
		<c:forEach var="pageNo" begin="${listModel.startPage}"
		end="${listModel.endPage}" >
		<c:if test="${listModel.requestPage ==PageNo }">
		<b>
		</c:if>
	<a href="GngListAction.do?pageNum=${pageNo}">[${pageNo}]</a> 
		<c:if test="${listModel.requestPage==PageNo }">
		</b>
		</c:if>
		</c:forEach>
					
		<c:if test="${listModel.endPage <listModel.totalPageCount }">
		<a href="GngListAction.do?pageNum=${listModel.startPage+5}"> [이후]</a>
		</c:if>		 --%>
		
		<!-- <form class="enquire_search" action="GngListAction.do" method="post">					      
					        <input type="checkbox" name="area" value="e_title"> 제목 
					        <input type="checkbox" name="area" value="id"> ID 
			                <input type="text" name="searchKey" size="10">
					        <input type="submit" value="검색">
					        </form>			 -->											
			      			        
					
			
			
<%@include file="../sub_page/footer.html" %>
</body>
</html>