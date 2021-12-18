<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/admin_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-admin">
				<!-- 사이드 메뉴 
				<jsp:include page="../layout/adSidebar.jsp" />
				<div class="admin-overview"></div>	-->
				<!-- 회원 총원 및 목록 -->
				<div class="admem-table">
					<h3>회원 총원</h3>
					<table class="admem-table-total" border="1" width="700px">
						<thead>
							<tr>
								<th>총원</th>
								<td>1005</td>
							</tr>
						</thead>
					</table>
						
					<h3>회원 목록</h3>
					<table class="admem-table-list" border="1" width="700px">
						<thead>
							<tr>
								<th>등록 일자</th>
								<th>이 름</th>
								<th>아이디</th>
								<th>생년월일</th>
								<th>성별</th>
							</tr>
							<tr>
								<td>2021-12-18</td>
								<td>홍길동</td>
								<td>test01</td>
								<td>00001111</td>
								<td>남</td>
							</tr>
						</thead>
					</table>
				</div>
										
					<!-- 회원 검색 -->
				<div class="admin-member-search">
					<form action="AdminController">
						<select class="addata-search-selbar">
							<option vlaue="name">이 름</option>
							<option vlaue="id">아 이 디</option>
						</select>
						<input type="text">
						<input type="submit" value="검색">
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