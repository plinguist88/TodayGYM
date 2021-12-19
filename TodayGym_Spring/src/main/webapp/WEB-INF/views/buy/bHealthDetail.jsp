<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/buyDetail_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>				
		<!-- buyDetail 본문 -->		
		<section class="buy_section">
			<div class="buy_title">
		 		<h1>구매상세 페이지</h1>
		 	</div>
		 	<div class="buy_info">
		 		<div class="buy_imfo_img">
		 			<img src="resources/img/buy/buyDetail/h1.png">
		 		</div>
		 		<div class="buy_info_rightbar">
		 		<fieldset class="buy_fieldset">
		 		<div class="buy_info_top">
		 			<h2 class="buy_info_h2">[헬스 일반 이용권]</h2>
		 			<div class="buy_info_title">
		 				<span class="buy_info_sale">10%</span>
		 				<div class="buy_info_price">
			 				<span class="buy_info_before">110,000원</span>
			 				<span class="buy_info_after">100,000원</span>
		 				</div>
		 			</div>
		 		</div>
		 		</fieldset>
		 		</div>
		 	</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>

</html>