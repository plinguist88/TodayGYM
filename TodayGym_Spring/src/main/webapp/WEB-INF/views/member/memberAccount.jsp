<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 상세</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/account_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-account">
				<div class="account-form">
					<form action="./memberUpdateProc" method="post">
						<div>ID</div><div></div>
						<input type="password" name="m_pass" value="">
						<input type="text" name="m_email" value="">
						<input type="text" name="m_phone" value="">
						<input type="submit" value="수정하기">
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