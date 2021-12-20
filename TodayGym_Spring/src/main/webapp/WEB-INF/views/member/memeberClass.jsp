<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="myClass-form">
		<h2>수강정보 || My Class</h2>
		<br>
		<div class="myClass-list">
			<div class="myClass-img">이미지</div>
			<div class="myClass-info">
				<div class="myClass-title">제목, 구분</div>
				<div class="myClass-title">수강 기간</div>
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
</body>
</html>