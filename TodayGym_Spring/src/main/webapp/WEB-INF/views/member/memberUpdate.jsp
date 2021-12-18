<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보수정</title>
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
			<div class="content-myInfoUpdate">
				<div class="myInfoUpdate-form">
					<form action="./myInfoUpdateProc" method="post">
						<input type="text" name="m_id" value="${myInfo.id}" placeholder="아이디">
						<input type="password" name="m_pw" value="${myInfo.pwd}" placeholder="비밀번호">
						<input type="hidden" name="m_name" value="${myInfo.name}" placeholder="이름">
						<input type="text" name="m_email" value="${myInfo.email}" placeholder="이메일">
						<input type="text" name="m_phone" value="${myInfo.phone}" placeholder="전화번호">
						<input type="hidden" name="m_birth" value="${myInfo.birth}" placeholder="생일">
						<input type="hidden" name="m_joindate" value="${myInfo.joindate}" placeholder="가입날짜">
						<input type="hidden" name="m_point" value="${myInfo.point}" placeholder="포인트">
						<input type="submit" value="회원정보 수정">
					</form>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>