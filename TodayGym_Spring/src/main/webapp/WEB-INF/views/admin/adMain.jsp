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
					<table>
							<tr>
								<th>총원</th>
								<td>${cnt.cnt}</td>
							</tr>
					</table>
					<table>
						<thead>
							<tr>
								<th>10대</th>
								<th>20대</th>
								<th>30대</th>
								<th>40대</th>
								<th>50대 이상</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>00</td>
								<td>00</td>
								<td>00</td>
								<td>00</td>
								<td>00</td>
							</tr>
						</tbody>
					</table>
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