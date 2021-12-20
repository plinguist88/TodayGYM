<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 상세페이지</title>
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

				<div class="content-admin-membox">
					<div class="admem-table">
						<div class="admem-table">
							<h3>회원 상세</h3>
							<table class="admem-table-basic">
								<thead>
									<tr>
										<th>이름</th>
										<td>name</td>
									</tr>
									<tr>
										<th>가입일자</th>
										<td>yyyy.MM.dd</td>
									</tr>
								</thead>
							</table>
							
							<div class="admem-table-dtbox">
								<table class="admem-table-detail">
								<thead>
									<tr>
										<th>아이디</th>
										<td>id</td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td>yyyy-MM-dd</td>
									</tr>
									<tr>
										<th>연락처</th>
										<td>nnn-nnnn-nnnn</td>
									</tr>
									<tr>
										<th>E-mail</th>
										<td>abc123@icia.co.kr</td>
									</tr>
									<tr>
										<th>보유 회원권</th>
										<td>null</td>
									</tr>
									<tr>
										<th>보유 포인트</th>
										<td>null</td>
									</tr>
								</thead>
							</table>
							</div>
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