<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Ticket</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adTicketList_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
	<div class="content-admin">
		<div class="content-adSidebar">
			<jsp:include page="../layout/adSidebar.jsp" />
		</div>
		<div class="content">
			<div class="content-adticket">
				<!-- Admin Ticket List Start  -->
				<h1>회원권</h1>
				<table class="listTable">
					<!-- List Title -->
					<thead>
						<tr class="listNav">
							<td colspan="6">
								<div class="listNavContainer">
									<jsp:include page="../layout/adSearchTicket.jsp" />
								</div>
							</td>
						</tr>
						<tr class="listTitle">
							<th>번호</th>
							<th>이름</th>
							<th>종목</th>
							<th>상품명</th>
							<th>사용기간</th>
							<th>사용여부</th>
						</tr>
					</thead>
					<!-- List Contents -->
					<tbody>
						<!-- 임시 링크 -->
						<tr>
							<td><a href="adTicketDetailMove.ad" class="ticketNum">T001</a></td>
							<td><a href="#">유저A</a></td>
							<td>헬스</td>
							<td><a href="#">빡빡이와 함께하는 해피헬스</a></td>
							<td>21.12.20 ~ 22.03.19</td>
							<td><button class="button ticketOn">사용</button></td>
						</tr>
						<c:forEach items="${tList}" var="tlist">
							<tr>
								<td><a href="./adTicketDetailMove.ad?t_no=${tlist.t_no}"
									class="ticketNum">${tlist.t_no}</a></td>
								<td><a href="./adMemDetailMove?m_id=${tlist.m_id}">${tlist.m_name}</a></td>
								<td>${tlist.p_cate}</td>
								<td>${tlist.p_subcate}</td>
								<td>구매날짜</td>
								<td><button class="button ticketOff">만료</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>