<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강내역</title>
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
					<div class="myInfo-class">
						<h2>수강내역 || My Class</h2>
						<br><br>
						<div class="myInfo-class-list">
							<div class="list-img">이미지</div>
							<div class="list-info">
								<div class="list-info-title">제목, 구분</div>
								<div class="list-info-month">수강 기간</div>
							</div>
						</div>
						<br>
						<div class="myInfo-class-list">
							<div class="list-img">이미지</div>
							<div class="list-info">
								<div class="list-info-title">제목, 구분</div>
								<div class="list-info-month">수강 기간</div>
							</div>
						</div>
						<c:forEach var="myClass" items="${myClassList}">
							<div class="myInfo-class-list">
								<div class="list-img">이미지</div>
								<div class="list-info">
									<div class="list-info-title">제목, 구분</div>
									<div class="list-info-month">수강 기간</div>
								</div>
							</div>
							<br>
						</c:forEach>
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