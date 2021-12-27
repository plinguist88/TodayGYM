<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<head>
<meta charset="UTF-8">
<title>상세지점페이지</title>
</head>
<link rel="stylesheet"
  href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/spotDetail_style.css">
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=786417483d2f9604a3f9b9013753528c&libraries=services"></script>	
<body>
	
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		
		
		                                
		<div class="img_space">
			<img class="img_gray" src="resources/img/spot/gray.jpg">
			<div class="img_sub">
				<h1>
					<i>지점안내</i>
				</h1>
				<div class="img_subb">
				<p>활력 있는 생활을 추구하는 당신을 위한 수준 높은 퍼블릭 스포츠센터</p>
				</div>
			</div>
		</div>
		
		
<!--                        배경 제목                  -->

<section>
	<form action="">
		<fieldset>
			<legend><u>연수점</u></legend>
				 <div class= "container">
        <div class="swiper mySwiper">
      <div class="swiper-wrapper">
        <div class="swiper-slide"><img src="resources/img/spotdetail/q.jpg"/></div>
        <div class="swiper-slide"><img src="resources/img/spotdetail/t.jpg"/></div>
        <div class="swiper-slide"><img src="resources/img/spotdetail/r.jpg"/>3</div>
        <div class="swiper-slide"><img src="resources/img/spotdetail/t.jpg"/></div>
        <div class="swiper-slide">Slide 5</div>
        <div class="swiper-slide">Slide 6</div>
        <div class="swiper-slide">Slide 7</div>
        <div class="swiper-slide">Slide 8</div>
        <div class="swiper-slide">Slide 9</div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
    </div>
       </div>
				
			<script src="resources/JavaScript/spotdetail.js"></script>
		</fieldset>
	</form>
</section>

<section>
<div>
	<form action="">
		<table>
			
			<tr>
				<th>센터</th>
				<td>연수점</td>
			</tr>
			
			<tr>
				<th>센터 주소</th>
				<td>인천광역시 연수구 새말로6</td>
			</tr>
			
			<tr>
				<th>센터 번호</th>
				<td>010-5840-1178</td>
			</tr>
			
			
			<tr class="tr_map">
				<th>지도</th>
				<td class="td_map"><div id="map" style="width:100%;height:100%;"></div></td>
			</tr>
			
	

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
geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

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
            content: '<div style="width:150px;text-align:center;padding:6px 0;">TODAYGYM 연수점</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
			
			
		
		</table>
	
	</form>
	</div>
</section>

	
		<!--               바디 끝                                      -->

		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer> 
	</div>
</body>
</html>