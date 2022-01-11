<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Main</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMain_style.css">
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
			<!-- Admin Overview Start  -->
			<div class="Overview-Member">
				<div>
					<span class="total">TodayGYM 회원 총원 : ${cnt}</span>
				</div>
				<table class="group">
					<c:forEach items="${agDto}" var="agDto">
						<tr>
							<th>${agDto.year}대회원</th>
							<td>${agDto.agnum}명</td>
						</tr>
					</c:forEach>
				</table>
			</div>
			<div class="Overview-Ticket">
				<div>
					<span class="total">TodayGYM 회원권 수 : ${totalTicket }</span>
				</div>
			</div>
			<div class="Overview-Spot">
				<div>
					<span class="total">TodayGYM 지점 수 : ${totalSpot }</span>
				</div>
				<div class="spotOverview">
					<c:forEach items="${spotOverviewList }" var="spotOverviewList">
						<div class="spotOverviewContent">
							<img src="${spotOverviewList.simg_sys }" />
							<p>${spotOverviewList.s_name }</p>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="Overview-Review">
				<div>
					<span class="total">TodayGYM 리뷰 수 : ${totalReview }</span>
				</div>
			</div>
			<!-- Admin Overview End  -->
		</div>
	</div>
</body>
</html>