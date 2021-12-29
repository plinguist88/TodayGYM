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
			<div class="buy_cate_sub">				
				<c:forEach var="bList" items="${bList}">
					<div class="health_cate">
						<div class="procImage">
							<div class="urlImage">
								<a  href="./buyDetail?b_code=${bList.b_code}"> <img class="dbimg" src="${bList.b_img}"> </a>
							</div>
						</div>
						<div class="health_info">
							<div class="info1">PROGRAM &nbsp;&nbsp;&nbsp;&nbsp;<span> [${bList.b_cate}] </span></div>
							<div class="info2">CONTENTS &nbsp;&nbsp;&nbsp;<span> ${bList.b_subcate} </span></div>
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
<script type="text/javascript">
//회원권 구매 카테고리 구분
$(document).ready( function() { 
	$('.buy_cate_sub').isotope({ 
		itemSelector: '.buy_cate_sub', 
		}); 
		
	$('.buy_cate').on( 'click', 'li', function() { 
		var filterValue = $(this).children().attr('data-filter'); 
		$('.buy_cate_sub').isotope({ filter: filterValue }); 
		$('.buy_cate li').removeClass('on'); 
		$(this).addClass('on'); 
		}); 
	});
</script>
</html>