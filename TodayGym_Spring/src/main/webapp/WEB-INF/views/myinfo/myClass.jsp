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
			<div class="content-myPage">
				<div class="myPage-form">
					<jsp:include page="myPageSide.jsp" />
					<div class="myPage-myClass">
						<div class="myPage-myClass-title">
							<h2>수강내역 || My Class</h2>
						</div>
						<div class="myPage-myClass-contents-null">
							<div class="myClass-contents">
								<p>수강내역이 없습니다.</p>
							</div>
						</div>
						<div class="myPage-myClass-contents">
							<c:forEach var="myClass" items="${myClass}">
								<div class="myClass-contents">
									<div class="contents-img">이미지파일</div>
									<div class="contents-info">
										<div class="contents-info-title">제목 : ${myClass.b_title}</div>
										<div class="contents-info-item">수강기간 :
											${myClass.b_month}</div>
									</div>
								</div>
							</c:forEach>
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