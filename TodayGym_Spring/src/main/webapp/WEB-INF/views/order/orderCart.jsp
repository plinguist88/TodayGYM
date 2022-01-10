<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt"%>
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
		<div class="myOrder_title">
			<img class="title_img" src="resources/img/spot/gray.jpg">
			<div class="title_contents">결제하기</div>
		</div>
		<section>
			<div class="content-myOrder">
				<div class="myOrder-form">
					<div class="myOrder-header">
						<div class="myOrder-header-title">
							<b>주문/결제</b>
						</div>
						<div class="myOrder-header-orderseq">
							장바구니 > <b>주문/결제</b> > 완료
						</div>
					</div>
					<div class="myOrder-contents">
						<div class="myOrder-contents-title">
							<div class="contents-title-img"></div>
							<div class="contents-title-title">회원권</div>
							<div class="contents-title-term">수강기간</div>
							<div class="contents-title-price">가격</div>
						</div>
						<div class="myOrder-contents-orderlist">
							<c:forEach var="myOrder" items="${myOrder}">
								<div class="contents-orderlist-img">
									<img src="${myOrder.p_img}" width="100%" height="100%">
								</div>
								<div class="contents-orderlist-title">${myOrder.p_subcate}</div>
								<div class="contents-orderlist-term">${myOrder.o_month}</div>
								<div class="contents-orderlist-price">
									<fmt:formatNumber type="number" maxFractionDigits="3" value="${myOrder.o_price}" /> 원
								</div>
								<hr>
							</c:forEach>
						</div>
						<div class="myOrder-contents-user">
							<div class="contents-user-title">
								<b>주문자 정보</b>
							</div>
							<div class="contents-user-info">
								<div class="user-info">
									<div class="info-contents">이름 : ${myInfo.m_name}</div>
									<div class="info-contents">이메일 : ${myInfo.m_email}</div>
									<div class="info-contents">전화번호 : ${myInfo.m_phone}</div>
								</div>
								<div class="user-payment">
									<div class="payment-title">게좌이체 : 투짐은행</div>
									<div class="payment-contents">
										<button class="btn-payment"
											onclick="location.href='./cartPay?m_id=${mb.m_id}'">결제하기</button>
									</div>
								</div>
							</div>
						</div>
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