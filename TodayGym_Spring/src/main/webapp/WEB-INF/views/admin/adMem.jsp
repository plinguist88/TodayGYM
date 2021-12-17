<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/CSS/admin_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-admin">
			<!-- 회원 관리 메인 -->
				<div class="content-admin-data">
					<!-- 회원 수 표시 -->
					<div class="addata-total">
						<div class="at-1">총 원</div>
						<div class="at-2">남 성</div>
						<div class="at-3">여 성</div>
					</div>
					<!-- 회원 목록 -->
					<div class="addata-list">
						<div class="al-1">등록 일자</div>
						<div class="al-1">이 름</div>
						<div class="al-1">아 이 디</div>
						<div class="al-1">생 년 월 일</div>
						<div class="al-1">성 별</div>					
					</div>
					<!-- 회원 검색 -->
					<div class="addata-search">
						<form action="">
							<select>
								<option vlaue="name">이 름</option>
								<option vlaue="id">아 이 디</option>
							</select>
							<input type="text">
							<input type="submit" value="검색">
						</form>
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