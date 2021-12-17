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
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/order_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-order">
				<div class="order-form">
					<div class="order-title">
						<div class="title-num">주문번호</div>
						<div class="title-cate">카테고리</div>
						<div class="title-title">수강명</div>
						<div class="title-price">가격</div>
					</div>
					<c:forEach var="olist" items="${cList}">
						<div class="order-list">
							<div class="list-num">${olist.num}</div>
							<div class="list-cate">${olist.title}</div>
							<div class="list-title">${olist.cate}</div>
							<div class="list-price">${olist.price}</div>
						</div>
					</c:forEach>
					<div class="user-info">
						<div class="user-name">${member.name}</div>
						<div class="user-phone">${member.phone}</div>
					</div>
				</div>
				<div class="bank-form">
					<div class="bank-payment">
						<form action="./oPayAct" method="post">
							<input type="text" name="bk_account" id="bkaccount" placeholder="계좌번호">
							<input type="password" name="bk_pwd" id="bkpwd" placeholder="비멀번호">
							<input type="submit" value="결제하기">
						</form>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>