<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
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
						<h3>회원 총원</h3>
						<table class="admem-table-total">
							<thead>
								<tr>
									<th>총원</th>
									<td>nn</td>
								</tr>
							</thead>
						</table>

						<h3>회원 목록</h3>
						<table class="admem-table-list">
							<thead>
								<tr>
									<th>가입일자</th>
									<th>이 름</th>
									<th>아이디</th>
									<th>생년월일</th>
									<th>성별</th>
								</tr>
								<c:forEach items="${mList}" var="mb">
									<tr>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${mb.m_joindate}" /></td>
										<td>${mb.m_name}</td>
										<td><a href="./adMemDetailMove?m_id=${mb.m_id}" style="color: #000;">${mb.m_id}</a></td>
										<td>${mb.m_birth}</td>
									</tr>
								</c:forEach>
							</thead>
						</table>
					</div>

					<!-- 회원 검색 -->
					<div class="admin-member-search">
						<select class="addata-search-selbar">
							<option vlaue="name">이 름</option>
							<option vlaue="id">아 이 디</option>
						</select> <input type="text" class="addata-search-txtbar"
							placeholder="찾으시는 회원의 정보를 입력해주세요."> <input type="submit"
							value="검색" class="addata-search-btn">
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