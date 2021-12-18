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
					<div class="myInfo-name">이름 : ${myInfo.name}</div>
					<div class="myInfo-brith">생년월일 : ${myInfo.birth}</div>
					<div class="myInfo-phone">전화번호 : ${myInfo.phone}</div>
					<div class="myInfo-email">이메일 : ${myInfo.email}</div>
					<button class="btn-myInfoUpdate" id="memberUpdate" onclick="location.href='./myInfoUpdate'">회원정보 수정</button>
				</div>
				<div class="myClass-form">
					<c:forEach var="myClass" items="${myClassList}">
						<div class="myClass-list">
							<div class="myClass-list-cate">구분 : ${myClass.cate}</div>
							<div class="myClass-list-title">강좌명 : ${myClass.title}</div>
							<div class="myClass-list-month">기간 : ${myClass.month}</div>
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