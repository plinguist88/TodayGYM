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
						<td>구매날짜</td>
						<td>사용여부</td>
					</tr>
				</thead>
				<!-- Ticket List Contents -->
				<tbody class="ticketList">
					<c:forEach items="${tDto}" var="tList">
						<tr>
							<td>${tList.t_no}</td>
							<td><a href="adMemDetailMove?m_id=${tList.m_id}">${tList.m_name}</a></td>
							<td>${tList.p_cate}</td>
							<td>${tList.p_subcate}</td>
							<td>${tList.t_issuedate}</td>
							<td><button class="button ticketOn">${tList.t_use}</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>