<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리 상세페이지</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMem_style.css">
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
			<div class="content-adminmem">
				<div class="content-adSidebar">
					<jsp:include page="../layout/adSidebar.jsp" />
				</div>

				<div class="content-admin-membox">
					<div class="admem-table">
						<h3>회원 상세</h3>
						<table class="admem-table-basic">
							<thead>
								<tr>
									<th>이름</th>
									<td>${memdto.m_name}</td>
								</tr>
								<tr>
									<th>가입일자</th>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${memdto.m_joindate}" /></td>
								</tr>
							</thead>
						</table>

						<div class="admem-table-dtbox">
							<table class="admem-table-detail">
								<thead>
									<tr>
										<th>아이디</th>
										<td>${memdto.m_id}</td>
									</tr>
									<tr>
										<th>생년월일</th>
										<td>${memdto.m_birth}</td>
									</tr>
									<tr>
										<th>연락처</th>
										<td>${memdto.m_phone}</td>
									</tr>
									<tr>
										<th>E-mail</th>
										<td>${memdto.m_email}</td>
									</tr>
									<tr>
										<th>보유 회원권</th>
										<td>---</td>
									</tr>
									<tr>
										<th>보유 포인트</th>
										<td>${memdto.m_point}</td>
									</tr>
								</thead>
							</table>
						</div>
					</div>

					<!-- 회원 수정 버튼 -->
					<div class="admem-btnarea">
						<button class="admem-btnarea-upbtn">
							<a href="./adMemUpdateMove?m_id=${memdto.m_id}">수정</a>
						</button>
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