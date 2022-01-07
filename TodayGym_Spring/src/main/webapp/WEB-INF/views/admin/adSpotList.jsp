<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
						<th colspan="7"><h1>TodayGYM 지점</h1></th>
					</tr>
					<tr class="listNav">
						<td colspan="7">
							<div class="listNavContainer">
								<a href="adSpotRegFormMove.ad"> <input type="button"
									class="spotInsertBtn" value="지점 등록" />
								</a>
								<jsp:include page="../layout/adSearchSpot.jsp" />
							</div>
						</td>
					</tr>
					<tr class="listTitle">
						<td>지점 번호</td>
						<td>지점 이름</td>
						<td>연락처</td>
						<td>주소</td>
						<td>기타</td>
						<td>지점 이미지</td>
						<td>수정 / 삭제</td>
					</tr>
				</thead>
				<!-- Spot List Contents -->
				<tbody class="spotList">
					<c:forEach items="${sList}" var="sList">
						<tr>
							<td>${sList.s_code }</td>
							<td>${sList.s_name }</td>
							<td>${sList.s_phone }</td>
							<td>${sList.s_addr }</td>
							<td>${sList.s_content }</td>
							<td><a href="adSpotImageMove.ad?s_code=${sList.s_code }"
								onclick="window.open(this.href,'spotImage','width=500, height=800'); return false;">
									<button class="spotImage">지점 사진</button>
							</a></td>
							<td><a href="adSpotUpdateFormMove.ad?s_code=${sList.s_code }"><button>
										<ion-icon name="pencil-outline"></ion-icon>
									</button></a> / <a href="adSpotDeleteMove.ad?s_code=${sList.s_code }"
								onclick="window.open(this.href, 'Admin Spot Delete', 'width=500, height=200, top=400, left=900, scrollbars=no, location=no, toolbars=no, status=no'); return false;"><button>
										<ion-icon name="trash"></ion-icon>
									</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- Admin Spot List End  -->
		</div>
	</div>
</body>
</html>