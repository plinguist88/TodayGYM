<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Ticket Detail</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adTicketDetail_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
	<div class="wrap">
		<div class="content-admin">
			<div class="content-adSidebar">
				<jsp:include page="../layout/adSidebar.jsp" />
			</div>
			<div class="content">
<!-- Admin Ticket Detail Start  -->
				<table class="detailTable">
					<thead>
						<tr>
							<th colspan="4"><h1>회원권 상세페이지</h1></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="detailTitle">회원권 번호</td>
							<td class="detailContent">T001</td>
							<td class="detailTitle">회원 이름</td>
							<td class="detailContent">유저A</td>
						</tr>
						<tr>
							<td class="detailTitle">종목</td>
							<td class="detailContent">헬스</td>
							<td class="detailTitle">서브종목</td>
							<td class="detailContent">PT</td>
						</tr>
						<tr>
							<td class="detailTitle">회원권 이름</td>
							<td class="detailContent">빡빡이와 함께하는 해피헬스</td>
							<td class="detailTitle">사용여부</td>
							<td class="detailContent">사용</td>
						</tr>
						<tr>
							<td class="detailTitle">기간</td>
							<td class="detailContent">3개월</td>
							<td class="detailTitle">가격</td>
							<td class="detailContent">100000원</td>
						</tr>
						<tr>
							<td class="detailTitle">시작일</td>
							<td class="detailContent">2021.12.20</td>
							<td class="detailTitle">만료일</td>
							<td class="detailContent">2022.03.19</td>
						</tr>
					</tbody>
					<tfoot>
					</tfoot>
				</table>
<!-- Admin Ticket Detail End  -->
			</div>
		</div>
	</div>
</body>
</html>