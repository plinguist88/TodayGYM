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

	
		<!--               바디 끝                                      -->

		<!--  <footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer> -->
	</div>
</body>
</html>