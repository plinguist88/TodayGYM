<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
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
					<div class="myInfo-pwdChange">
						<h2>비밀번호 변경 || My Password Change</h2>
						<br><br>
						<div class="myInfo-pwdChange-contents">
							<input type="password" class="pwdChange-contents" placeholder="비밀번호">
							<input type="password" class="pwdChange-contents" placeholder="비밀번호 확인">
							<div class="pwdChange-contents-btn">
								<button class="btn-pwdChange" id="memberUpdate"
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