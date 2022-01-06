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
				<div class="ov-member">
					<div class="ov-member-cnt">
						<table class="ov-member-cnt-tb">
							<tr>
								<th>총원</th>
								<td>${cnt}</td>
							</tr>
						</table>
					</div>
					<div class="ov-member-group">
						<table class="ov-member-group-tb">
							<c:forEach items="${agDto}" var="agDto">
								<tr>
									<th>${agDto.year}</th>
									<td>${agDto.agnum}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<div class="Overview-Ticket">Overview-Ticket</div>
			<div class="Overview-Spot">Overview-Spot</div>
			<div class="Overview-Review">Overview-Review</div>
			<!-- Admin Overview End  -->
		</div>
	</div>
</body>
</html>