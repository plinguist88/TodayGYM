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
				<h2>회원정보 || My Info</h2>
					<div class="myInfo-user">
						<div class="myInfo-info">이름 : ${myInfo.name}</div>
						<div class="myInfo-info">생년월일 : ${myInfo.birth}</div>
						<div class="myInfo-info">전화번호 : ${myInfo.phone}</div>
						<div class="myInfo-info">이메일 : ${myInfo.email}</div>
						<div class="myInfo-btn">
							<button class="btn-myInfo" id="memberUpdate"
								onclick="location.href='./myInfoUpdate'">수정하기</button>
						</div>
					</div>
					<div class="myInfo-adv">광고이미지</div>
				</div>
				<div class="myClass-form">
				<h2>수강정보 || My Class</h2>
					<div class="myClass-list">
						<div class="myClass-user">
							<p> 강좌명 : ${myClass.title} 구분 : ${myClass.cate} 기간 :
								${myClass.month}</p>
						</div>
					</div>
					<c:forEach var="myClass" items="${myClassList}">
						<div class="myClass-list">
							<div class="myClass-user">구분 : ${myClass.cate}</div>
							<div class="myClass-user">강좌명 : ${myClass.title}</div>
							<div class="myClass-user">기간 : ${myClass.month}</div>
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