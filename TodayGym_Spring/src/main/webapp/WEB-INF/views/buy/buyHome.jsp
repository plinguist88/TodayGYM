<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원권 구매</title>
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
			<div class="buy_cate_sub">				
				<c:forEach var="bList" items="${bList}">
					<div class="health_cate">
						<div class="procImage">
							<div class="urlImage">
								<a href="./buyDetail?b_code=${bList.b_code}"> <img src="${bList.b_img}"> </a>
							</div>
						</div>
						<div class="health_info">
							<div>번호 : ${bList.b_code}</div>
							<div>제목 : ${bList.b_subcate}</div>
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