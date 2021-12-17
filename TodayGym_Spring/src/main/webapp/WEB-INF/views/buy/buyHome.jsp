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
<script src="js/isotope.pkgd.min.js"></script>
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
				<li class="on"><a href="#" data-filter="*">모두보기</a></li>
				<li><a href="#" data-filter=".health">헬스</a></li>
				<li><a href="#" data-filter=".swim">수영</a></li>
				<li><a href="#" data-filter=".climb">클라이밍</a></li>
				<li><a href="#" data-filter=".cross">크로스핏</a></li>
			</ul>
			
			
			
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>