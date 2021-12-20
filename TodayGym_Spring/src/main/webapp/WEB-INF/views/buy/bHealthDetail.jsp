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
			 		<fieldset class="buy_info_sub">
			 			<a href="https://campaign.naver.com/event/npay-loca">💳︎ 네이버페이 쇼핑엔로카 최대 36개월 무이자할부</a>
			 		</fieldset>	
			 		<fieldset class="buy_info_sub2">
			 			<div class="buy_hr">
			 				<span>회원</span>
			 				<span>님 만을 위한 혜택</span>
			 			</div> 			
			 			<hr>
			 			<div class="buy_info_table">
			 				<p class="tip">TIP. 포인트 더 받는 방법</p>
			 				<div class="tip_div">
				 				<p><img src="resources/img/buy/buyDetail/buypay.png"> <a href="https://nid.naver.com/membership/join?fr=ss&m=joinAgree&rurl=https%3A%2F%2Fsmartstore.naver.com%2Fmembership%2Fbridge">최대 5% 적립, 무료시작 ></a> </p>
				 				<p><img src="resources/img/buy/buyDetail/buypay.png"> <a href="https://campaign.naver.com/naverhyundaicard/?eventCode=NAV03&utm_source=Shopping_benefit_text_PC&utm_medium=display&utm_campaign=NaverXhyundaicard_08&utm_content=image_A&redirect_Url1=https://smartstore.naver.com/amg13/products/5389825288">네이버 현대카드로 결제 시 ></a></p>
				 				<p><img src="resources/img/buy/buyDetail/buypoint.png"> <a href="https://campaign.naver.com/event/pointpay">충전포인트로 결제 시 ></a></p>
			 				</div>
			 			</div>
			 		</fieldset>
			 		<fieldset class="buy_info_banner">
			 			<a href="https://nid.naver.com/membership/join?fr=ss&m=joinAgree&rurl=https%3A%2F%2Fsmartstore.naver.com%2Fmembership%2Fbridge"><img src="resources/img/buy/buyDetail/buybanner.png"></a>
			 		</fieldset>	 		
			 		<hr>
			 		<div class="buy_info_content">
			 			<div class="buy_info_updown">
			 				<span class="updown">유효기간 &nbsp;&nbsp;</span>
			 				<span>&nbsp;&nbsp;구매일로부터 120일</span>
			 			</div>
			 			<div class="buy_info_updown">
			 				<span class="updown">사용장소&nbsp;&nbsp;&nbsp;</span>
			 				<span>&nbsp;&nbsp;<a href="#">📌위치보기</a></span>			 				
			 			</div>
			 		</div>
			 		<hr>
			 		<div class="buy_select">
			 			<select class="buy_select_contants">
			 				<option disabled selected>&nbsp;&nbsp;&nbsp;HEALTH</option>
			 				<option value="">일반이용권 1개월 (100,000원)</option>
			 				<option value="">일반이용권 3개월 (300,000원)</option>
			 				<option value="">일반이용권 6개월 (600,000원)</option>
			 				<option value="">일반이용권 12개월 (1,200,000원)</option>
			 			</select>
			 		</div>
			 		<div class="buy_price_hidden">
			 			<hr>
			 			<div>
				 			<span class="buy_price1">옵션명</span>
				 			<span class="buy_price2">원<button>x</button></span>
				 			
			 			</div>
			 			<hr>
			 		</div>
			 		<div class="buy_price">
			 			<div>총 상품 금액</div>
			 			<span class="">원</span>
			 		</div>
		 		</div>
		 	</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>

</html>