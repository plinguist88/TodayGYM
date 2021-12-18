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
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/buy_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		
		
		<!-- buyHome 본문 -->		
		<section class="buy_section">
			<div class="buytitle">
				<h1>회원권 구매</h1>
			</div>	
			<ul class="buy_cate">			
				<li class="on"><a href="#" data-filter=".health">헬스</a></li>
				<li><a href="#" data-filter=".swim">수영</a></li>
				<li><a href="#" data-filter=".climb">클라이밍</a></li>
				<li><a href="#" data-filter=".cross">크로스핏</a></li>
			</ul>
			<div class="buy_cate_sub">
				<div class="buy_cate_sub health">
					<div class="health_cate">
					<a href="#"><img src="resources/img/buy/h1.png"></a>
					<a href="#"><img src="resources/img/buy/h2.png"></a>
					<a href="#"><img src="resources/img/buy/h3.png"></a>
					<a href="#"><img src="resources/img/buy/h4.png"></a>
					</div>
				</div>				
				<div class="buy_cate_sub swim">
					<div class="swim_cate">
					<a href="#"><img src="resources/img/buy/s1.png"></a>
					<a href="#"><img src="resources/img/buy/s2.png"></a>
					<a href="#"><img src="resources/img/buy/s3.png"></a>
					<a href="#"><img src="resources/img/buy/s4.png"></a>
					</div>
				</div>
				<div class="buy_cate_sub climb">
					<div class="climb_cate">
					<a href="#"><img src="resources/img/buy/cb1m.png"></a>
					<a href="#"><img src="resources/img/buy/cb2m.png"></a>
					<a href="#"><img src="resources/img/buy/cb3m.png"></a>
					<a href="#"><img src="resources/img/buy/cb4m.png"></a>
					</div>
				</div>
				<div class="buy_cate_sub cross">
					<div class="cross_cate">
					<a href="#"><img src="resources/img/buy/cs1m.png"></a>
					<a href="#"><img src="resources/img/buy/cs2m.png"></a>
					<a href="#"><img src="resources/img/buy/cs3m.png"></a>
					<a href="#"><img src="resources/img/buy/cs4m.png"></a>
					</div>
				</div>
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