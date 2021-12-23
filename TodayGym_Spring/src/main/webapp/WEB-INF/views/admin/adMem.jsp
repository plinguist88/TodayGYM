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
			<div class="content-admin">
				<div class="content-adSidebar">
					<jsp:include page="../layout/adSidebar.jsp" />
				</div>

				<div class="content">
					<table class="admem-table-total">
						<thead>
							<tr>
								<th colspan="5"><h1>회원 총원</h1></th>
							</tr>
							<tr>
								<th>총원</th>
								<td>nn</td>
							</tr>
						</thead>
					</table>

					<table class="admem-table-mlist">
						<thead>
							<tr>
								<th colspan="5"><h1>회원 목록</h1></th>
							</tr>
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
									<td><a href="./adMemDetailMove?m_id=${mb.m_id}"
										style="color: #000;">${mb.m_id}</a></td>
									<td>${mb.m_birth}</td>
								</tr>
							</c:forEach>
						</thead>
					</table>
					<!-- 회원 검색 -->
					<div class="admem-table-search">
						<form class="searchFrm" method="post" action="adMemSearch">
							<select class="adSearch-selbar">
								<option value="m_id"
									<c:if test="${map.search_option == 'm_id'}">selected</c:if>>아이디</option>

								<option value="m_name"
									<c:if test="${map.search_option == 'm_name'}">selected</c:if>>이름</option>
							</select> <input class="adSearch-txtbar" value="${map.keyword}"> <input
								type="submit" value="검색">
						</form>
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