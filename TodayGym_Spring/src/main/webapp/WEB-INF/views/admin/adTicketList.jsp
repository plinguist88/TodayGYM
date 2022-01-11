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
			<!-- Admin Ticket List Start  -->
			<table class="listTable">
				<!-- Ticket List Title -->
				<thead>
					<tr>
						<th colspan="6"><h1>TodayGYM 회원권</h1></th>
					</tr>
					<tr class="listNav">
						<td colspan="6">
							<div class="listNavContainer">
								<jsp:include page="../layout/adSearchTicket.jsp" />
							</div>
						</td>
					</tr>
					<tr class="listTitle">
						<td>회원권 번호</td>
						<td>회원 이름</td>
						<td>회원권 종목</td>
						<td>회원권 이름</td>
						<td>사용기간</td>
						<td>사용여부</td>
					</tr>
				</thead>
				<!-- Ticket List Contents -->
				<tbody class="ticketList">
					<c:forEach items="${tDto}" var="tList">
						<tr>
							<td><a href="adTicketDetailMove.ad?t_no=${tList.t_no}">${tList.t_no}</a></td>
							<td><a href="adMemDetailMove?m_id=${tlist.m_id}">${tlist.m_name}</a></td>
							<td>${tList.p_cate}</td>
							<td>${tList.p_subcate}</td>
							<td>${tList.t_issuedate}</td>
							<td>${tList.t_use}</td>
							<td><button class="button ticketOn">사용</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>