<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원권구매 메인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/buyHealth.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		
		
		<!-- buyHome 본문 -->		
		<section class="buy_section">
			<div class="section_info">
				<div class="section_info_img">
					<img class="infoimg" src="resources/img/spot/gray.jpg">
				</div>
				<div class="section_info_title">
					<h1>PROGRAM</h1>
					<br>
					<p>다양한 프로그램으로 맞춤형 프로세스를 제공하여 고객님의 니즈를 충족시켜드립니다</p>
				</div>
			</div>	
			<ul class="buy_cate">			
				<li class="on"><a href="product?p_cate=HEALTH" style="background-image: url('resources/img/spot/gray.jpg');"> 헬 스 </a></li>
				<li><a href="product?p_cate=SWIM" style="background-image: url('resources/img/spot/gray.jpg');"> 수 영 </a></li>
				<li><a href="product?p_cate=CLIMB" style="background-image: url('resources/img/spot/gray.jpg');">클라이밍</a></li>
				<li><a href="product?p_cate=CROSSFIT" style="background-image: url('resources/img/spot/gray.jpg');">크로스핏</a></li>
			</ul>
			<div class="buy_cate_sub">				
				<c:forEach var="pList" items="${pList}">
					<div class="health_cate">
						<div class="procImage">
							<div class="urlImage">
								<a  href="./detail?p_code=${pList.p_code}"> <img class="dbimg" src="${pList.p_img}"> </a>
							</div>
						</div>
						<div class="health_info">
							<div class="info1">PROGRAM &nbsp;&nbsp;&nbsp;&nbsp;<span> [${pList.p_cate}] </span></div>
							<div class="info2">CONTENTS &nbsp;&nbsp;&nbsp;<span> ${pList.p_subcate} </span></div>
						</div>
					</div>
				</c:forEach>									
			</div>	
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>

</html>