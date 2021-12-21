<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬스 초급레슨</title>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
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
		 		<h1>구매 페이지</h1>
		 	</div>
		 	<div class="buy_info">
		 		<div class="buy_imfo_img">
		 			<img src="resources/img/buy/buyDetail/h2.png">
		 		</div>
		 		<div class="buy_info_rightbar">
			 		<fieldset class="buy_fieldset">
			 		<div class="buy_info_top">
			 			<h2 class="buy_info_h2">[개인 PT권]</h2>
			 			<div class="buy_info_title">
			 				<span class="buy_info_sale">10%</span>
			 				<div class="buy_info_price">
				 				<span class="buy_info_before">660,000원</span>
				 				<span class="buy_info_after">600,000원</span>
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
			 				<span>&nbsp;&nbsp;<a href="#map">📌위치보기</a></span>			 				
			 			</div>
			 		</div>
			 		<hr>
			 		<div class="buy_select">
			 			<select class="buy_select_contants">
			 				<option disabled selected>&nbsp;&nbsp;&nbsp;1:1개인 PT</option>
			 				<option value="">1:1개인 PT 1개월 (600,000원)</option>
			 				<option value="">1:1개인 PT  3개월 (1,200,000원)</option>
			 				<option value="">1:1개인 PT  6개월 (3,000,000원)</option>
			 				<option value="">1:1개인 PT  12개월 (6,000,000원)</option>
			 			</select>
			 		</div>
			 		<div class="buy_price_hidden">
			 			<hr>
			 			<div>
				 			<span class="buy_price1">옵션명</span>
				 			<span class="buy_price2">원</span>
				 			
			 			</div>
			 			<hr>
			 		</div>
			 		<div class="buy_price">
			 			<div>총 상품 금액</div>
			 			<span class="">원</span>
			 		</div>			
		 		</div>	
		 		<form action="" method="post">
		 			<input type="button" value="💳구매하기" class="nextbutton1">
		 		</form>	 
		 		<form action="" method="post">
		 			<input type="button" value="🛒장바구니" class="nextbutton2">
		 		</form>	 		
		 	</div>		 	
		</section>
		<section class="buy_detail">
			<div>
				<fieldset>
					<legend class="buy_detail_legend">회원권 상세정보</legend>
					<table class="buy_table">
						<tr class="t1">
							<td class="t1">⚠︎ 직거래 유도 안내</td>
						</tr>
						<tr class="t2">
							<td class="t2">현금결제를 유도하는 경우 사기의 가능성이 있으니 절대 결제하지 마시고<br>
								네이버 고객센터로 문의하여 주시기 바랍니다.
							</td>
						</tr>
					</table>
					<table class="buy_table_info">
						<tr>
							<th>상품번호</th>
							<td colspan="3">TgHealth002</td>
							<th>상품종류</th>
							<td>회원권</td>
						</tr>
						<tr>
							<th>발행국가</th>
							<td colspan="3">대한민국</td>
						</tr>
						<tr>
							<th>유효기간</th>
							<td colspan="3">구매일로부터 120일</td>
							<th>사용장소</th>
							<td>위치보기</td>
						</tr>
						<tr>
							<th>발행처</th>
							<td colspan="3">TOGYM피트니스</td>
							<th>연락처</th>
							<td>010-9231-9163</td>
						</tr>
						<tr>
							<th>영수증발급</th>
							<td colspan="3">신용카드전표, 현금영수증발급</td>
						</tr>
						<tr>
							<th>교환환불문의</th>
							<td colspan="3">010-9231-9163</td>
						</tr>
					</table>
					<div class="videozone">
						<video class="healthvideo" muted autoplay loop>
							<source src="resources/video/health.mp4" type="video/mp4">
						</video>
					</div>
					<div>
						<p><img src="resources/img/buy/buyDetail/buyimg.jpg"></p>
					</div>
					<p style="margin-top: -12px">
				<em class="link"> 
					<a href="javascript:void(0);"onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')"></a>
				</em>
			</p>
			<h3>찾아오는 길</h3>
			<div id="map"></div>
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4a83a37e9876c49619ffc58ce56c6445&libraries=services">				
			</script>
			<script>
				var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
			        level: 3 // 지도의 확대 레벨
			    };  
			
				// 지도를 생성합니다    
				var map = new kakao.maps.Map(mapContainer, mapOption); 
				
				// 주소-좌표 변환 객체를 생성합니다
				var geocoder = new kakao.maps.services.Geocoder();
				
				// 주소로 좌표를 검색합니다
				geocoder.addressSearch('인천광역시 학익동', function(result, status) {
			
			    // 정상적으로 검색이 완료됐으면 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // 결과값으로 받은 위치를 마커로 표시합니다
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // 인포윈도우로 장소에 대한 설명을 표시합니다
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">TOGYM 헬스본점</div>'
			        });
			        infowindow.open(map, marker);
			
			        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
			        map.setCenter(coords);
				    } 
				});    
			</script>
					
					
				</fieldset>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>



</html>