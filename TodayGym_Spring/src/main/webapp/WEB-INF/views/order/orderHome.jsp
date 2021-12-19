<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/order_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-myOrder">
				<div class="myOrder-form">
					<div class="myOrder-title">
						<div class="title-num">주문번호</div>
						<div class="title-cate">카테고리</div>
						<div class="title-title">수강명</div>
						<div class="title-price">가격</div>
					</div>
					<c:forEach var="myOrder" items="${myOrderList}">
						<div class="myOrder-list">
							<div class="myOrder-list-num">${myOrder.num}</div>
							<div class="myOrder-list-cate">${myOrder.cate}</div>
							<div class="myOrder-list-title">${myOrder.title}</div>
							<div class="myOrder-list-price">${myOrder.price}</div>
						</div>
					</c:forEach>
				</div>
				<div class="myInfo-form">
					<div class="myInfo-name">이름 : ${myInfo.name}</div>
					<div class="myInfo-phone">전화번호 : ${myInfo.phone}</div>
					<div class="myInfo-email">이메일 : ${myInfo.email}</div>
				</div>
				<div class="bank-form">
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>