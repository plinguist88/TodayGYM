<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/myinfo_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-myInfo">
				<div class="myInfo-form">
					<jsp:include page="myInfoSide.jsp" />
					<div class="myInfo-info">
						<h2>회원정보 || My Info</h2>
						<br><br>
						<div class="myInfo-info-contents">
							<div class="info-contents">이름 : ${myInfo.name}</div>
							<div class="info-contents">생년월일 : ${myInfo.birth}</div>
							<div class="info-contents">전화번호 : ${myInfo.phone}</div>
							<div class="info-contents">이메일 : ${myInfo.email}</div>
							<div class="info-contents-btn">
								<button class="btn-myInfo" id="memberUpdate"
									onclick="location.href='./myInfoUpdate'">내 정보 수정하기</button>
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