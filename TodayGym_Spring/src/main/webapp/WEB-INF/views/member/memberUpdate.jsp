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
						<p class="myInfo-update">아이디 : ${myInfo.id}</p>
						<input type="password" class="myInfo-upate" name="m_pw" value="${myInfo.pwd}" placeholder="비밀번호">
						<p class="myInfo-update">이름 : ${myInfo.name}</p>
						<input type="text" name="m_email" class="myInfo-update" value="${myInfo.email}" placeholder="이메일">
						<input type="text" name="m_phone" class="myInfo-update" value="${myInfo.phone}" placeholder="전화번호">
						<p class="myInfo-update">생일 : ${myInfo.birth}</p>
						<p class="myInfo-update">가입날짜 : ${myInfo.joindate}</p>
						<p class="myInfo-update">포인트 : ${myInfo.point}</p>
						<input type="submit" class="btn-myInfoUpdate" value="회원정보 수정">
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