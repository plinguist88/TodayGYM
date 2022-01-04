<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제완료</title>
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
			<div class="title_contents">결제완료</div>
		</div>
		<section>
			<div class="content-orderComplete">
				<div class="orderComplete-form">
					<div class="orderComplete-contents">
						<p>결제가 완료되었습니다. 감사합니다.</p>
					</div>
					<div class="orderComplete-btn">
						<div class="orderComplete-btn-title">
							<p>수강내역에서 회원권을 확인 할 수 있습니다.</p>
						</div>
						<div class="orderComplete-btn-click">
							<button type="button" onclick="location.href='myClass'" class="btn-myclass">수강내역</button>
							<button type="button" onclick="location.href='home'" class="btn-main">메인화면</button>
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