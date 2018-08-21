<%@page import="yanoll.models.dao.Enquire_BoardDao"%>
<%@page import="yanoll.mapper.BoardMapper"%>
<%@page import="yanoll.models.vo.Enquire_Board"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Destino project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/common/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/gng_style/gng_contact.css">
<link rel="stylesheet" type="text/css" href="../../styles/gng_style/gng_main.css">
<script src="../../scripts/common/jquery-3.2.1.min.js"></script>
<script src="../../styles/common/bootstrap4/popper.js"></script>
<script src="../../styles/common/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/common/greensock/TweenMax.min.js"></script>
<script src="../../plugins/common//greensock/TimelineMax.min.js"></script>
<script src="../../plugins/common//scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/common//greensock/animation.gsap.min.js"></script>
<script src="../../plugins/common//greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/common//easing/easing.js"></script>
<script src="../../plugins/common//parallax-js-master/parallax.min.js"></script>
<script src="../../scripts/common/contact_custom.js"></script>

<style type="text/css">
.enquire_detail{
    width: 80%;
	height: 41px;
	border: solid 2px #dbdbdb;
	padding-left: 20px;
	margin-left :10%;
	margin-bottom: 10%;
	margin-top:5%;
	outline: none;
	text-align: center;

}

</style>


</head>
<body>


   <table class="enquire_reply" border="1">
	<thead>
	<tr>
	<td style="background-color: #fafafa; color: #000000; width: 80px;"><h5>내용</h5></td>
	<td colspan="3"><h5>${reply.r_contents}</h5></td>
	</tr>
	</thead>
	</table>

																		
							
					      			        
					
			
			

</body>
</html>