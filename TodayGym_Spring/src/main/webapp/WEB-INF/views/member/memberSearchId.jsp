<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/member_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<div class="sub_image">
			<img class="gray_image" src="resources/img/spot/gray.jpg" />
			<div class="sub_content">
				<h1>아이디 찾기</h1>
			</div>
		</div>
		<section>
			<div class="content">
				<form class="login-form" action="searchId.do" method="get">

					 
					<input class="login-input" type="text" name="email" placeholder="email" required>
					<input type="submit" id=search class="login-btn" value="FIND">
					<input type="text" class="search-box" value="ID : ${searchId}">

				</form>
			</div>
		</section>
		<div>
			<footer>
				<jsp:include page="../layout/footer.jsp" />
			</footer>
		</div>
	</div>
</body>
</html>