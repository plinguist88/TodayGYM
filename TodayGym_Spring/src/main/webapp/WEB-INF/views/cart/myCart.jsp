<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/mycart_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-cart">
				<div class="cart-form">
					<c:forEach var="mycart" items="${mycart}">
						<div>장바구니 번호 : ${mycart.c_code}</div>
						<div>제목 : ${mycart.p_subcate}</div>
						<div>수강기간 : ${mycart.o_month}</div>
						<div>가격 : ${mycart.o_price}</div>
					</c:forEach>
				</div>
				<button onclick="location.href='./myOrder?m_id=${mb.m_id}'">주문하기</button>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>