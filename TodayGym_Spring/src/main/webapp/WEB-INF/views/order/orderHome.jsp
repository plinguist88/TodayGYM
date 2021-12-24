<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제</title>
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
							<div class="contents-title-cate">종류</div>
							<div class="contents-title-title">이름</div>
							<div class="contents-title-term">수강기간</div>
							<div class="contents-title-price">가격</div>
						</div>
						<div class="myOrder-contents-orderlist">
							<div class="contents-orderlist-cate">종류</div>
							<div class="contents-orderlist-title">이름</div>
							<div class="contents-orderlist-term">수강기간</div>
							<div class="contents-orderlist-price">가격</div>
							<hr>
							<div class="contents-orderlist-cate">종류</div>
							<div class="contents-orderlist-title">이름</div>
							<div class="contents-orderlist-term">수강기간</div>
							<div class="contents-orderlist-price">가격</div>
							<hr>
							<div class="contents-orderlist-cate">종류</div>
							<div class="contents-orderlist-title">이름</div>
							<div class="contents-orderlist-term">수강기간</div>
							<div class="contents-orderlist-price">가격</div>
							<hr>
							<c:forEach var="myOrder" items="${myOrder}">
								<div class="contents-orderlist-cate">종류</div>
								<div class="contents-orderlist-title">이름</div>
								<div class="contents-orderlist-term">수강기간</div>
								<div class="contents-orderlist-price">가격</div>
								<hr>
							</c:forEach>
						</div>
						<div class="myOrder-contents-user">
							<div class="contents-user-title">
								<b>주문자 정보</b>
							</div>
							<div class="contents-user-info">
								<div class="user-info">
									<div class="info-name">이름 : ${myInfo.m_id}</div>
									<div class="info-email">이메일 : ${myInfo.m_email}</div>
									<div class="info-phone">전화번호 : ${myInfo.m_phone}</div>
								</div>
								<div class="user-info-payment"></div>
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