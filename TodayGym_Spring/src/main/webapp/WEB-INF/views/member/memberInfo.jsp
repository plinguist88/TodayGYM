<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 메인</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/account_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-account">
				<div class="account-form">
					<div class="account-name"><p>이름 : </p></div>
					<div class="account-brith"><p>생년월일 : </p></div>
					<div class="account-phone"><p>전화번호 : </p></div>
					<div class="account-email"><p>이메일 : </p></div>
					<button class="btn-memberUpdate" id="memberUpdate" onclick="location.href='./myInfoUpdate'">회원정보 수정</button>
				</div>
				<div class="class-form">
					<c:forEach var="classlist" items="">
						<div class="class-list">
							<div class="class-list-cate">카테고리</div>
							<div class="class-list-title">강좌명</div>
							<div class="class-list-month">개월수</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>