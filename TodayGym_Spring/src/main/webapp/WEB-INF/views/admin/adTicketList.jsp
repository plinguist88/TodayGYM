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
	<div class="wrap">
		<div class="content-admin">
			<div class="content-adSidebar">
				<jsp:include page="../layout/adSidebar.jsp" />
			</div>
			<div class="content">
<!-- Admin Ticket List Start  -->
				<table class="listTable">
					<!-- List Title -->
					<thead>
						<tr>
							<th colspan="6"><h1>회원권</h1></th>
						</tr>
						<tr class="listSpace">
							<td></td>
						</tr>
						<tr class="listTitle">
							<td>번호</td>
							<td>이름</td>
							<td>종목</td>
							<td>상품명</td>
							<td>사용기간</td>
							<td>만료여부</td>
						</tr>
					</thead>
					<!-- List Contents -->
					<tbody>
						<tr>
							<td><a href="adTicketDetailMove.ad" class="ticketNum">T001</a></td>
							<td><a href="#">유저A</a></td>
							<td>헬스</td>
							<td><a href="#">빡빡이와 함께하는 해피헬스</a></td>
							<td>21.12.20 ~ 22.03.19</td>
							<td><button class="button ticketOn">사용</button></td>
						</tr>
						<tr>
							<td>T002</td>
							<td>유저B</td>
							<td>수영</td>
							<td>초고속 자유형 특강</td>
							<td>21.07.30 ~ 21.10.29</td>
							<td><button class="button ticketOff">만료</button></td>
						</tr>
					</tbody>
					<!-- List Search -->
					<tfoot>
						<tr>
							<td>검색조건</td>
							<td colspan="4">검색내용</td>
							<td>검색</td>
						</tr>
					</tfoot>
				</table>
<!-- Admin Ticket List End  -->
			</div>
		</div>
	</div>
	<script type="text/javascript">
	
		
	</script>
</body>
</html>