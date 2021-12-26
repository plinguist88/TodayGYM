<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Spot</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSpotList_style.css">
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
			<!-- Admin Spot List Start  -->
			<table class="listTable">
				<!-- Spot List Title -->
				<thead>
					<tr>
						<th colspan="5"><h1>TodayGYM 지점</h1></th>
					</tr>
					<tr class="listRegMove">
						<td colspan="5"><a href="adSpotRegFormMove.ad"> <input
								type="button" value="지점 등록" />
						</a></td>
					</tr>
					<tr class="listTitle">
						<td>번호</td>
						<td>지점명</td>
						<td>연락처</td>
						<td>주소</td>
						<td>상세정보</td>
					</tr>
				</thead>
				<!-- Spot List Contents -->
				<tbody class="spotListPrint">
					<c:forEach items="${sList}" var="sList">
						<tr>
							<td><a href="#">${sList.s_code}</a></td>
							<td><a href="#">${sList.s_name}</a></td>
							<td>${sList.s_phone}</td>
							<td><a href="#">${sList.s_addr}</a></td>
							<td><a href="#"><button class="spotDetail">상세정보</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- Admin Spot List End  -->
		</div>
	</div>
</body>
</html>