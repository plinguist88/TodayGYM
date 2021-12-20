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
			<div class="content-myClass">
				<div class="myClassDetail-form">
					<div class="myCLass-title">
						<div class="myClass-user">구분</div>
						<div class="myClass-user">강좌명</div>
						<div class="myClass-user">기간</div>
					</div>
					<c:forEach var="myClass" items="${myClassList}">
						<div class="myClass-list">
							<div class="myClass-user"><p>${myClass.cate}</p></div>
							<div class="myClass-user"><p>${myClass.title}</p></div>
							<div class="myClass-user"><p>${myClass.month}</p></div>
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