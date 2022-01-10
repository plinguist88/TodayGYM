<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원관리 페이지</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMem_style.css">
<link type="text/css" rel="stylesheet"
	href="resources/css/adSearch_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<script src="resources/JavaScript/jquery.serializeObject.js"></script>
</head>
<body>
	<div class="content-admin">
		<div class="content-adSidebar">
			<jsp:include page="../layout/adSidebar.jsp" />
		</div>
		<div class="content">
			<!-- Admin Member List Start -->
			<table class="listTable">
				<!-- Member List Title -->
				<thead>
					<tr>
						<th colspan="5"><h1>TodayGYM 회원</h1></th>
					</tr>
					<tr class="listNav">
						<td colspan="7">
							<div class="listNavContainer">
								<form name="adSearchForm" autocomplete="off">
									<div class="adSearchContainer">
										<select class="adSearchSelect" name="searchType">
											<option selected value="">----선택----</option>
											<option value="m_name">회원 이름</option>
											<option value="m_id">회원 아이디</option>
										</select> <input type="text" class="keyword" name="keyword" value=""></input>
										<button type="button" class="adSearchBtn" onclick="getSearchList()">검색</button>
									</div>
								</form>
							</div>
						</td>
					</tr>
					<tr class="listTitle">
						<td>가입일자</td>
						<td>회원 이름</td>
						<td>회원 아이디</td>
						<td>생년월일</td>
						<td>상세정보</td>
					</tr>
				</thead>
				<!-- Member List Contents -->
				<tbody class="memberList">
					<c:forEach items="${mList}" var="mb">
						<tr>
							<td>${mb.m_joindate}</td>
							<td>${mb.m_name}</td>
							<td>${mb.m_id}</td>
							<td>${mb.m_birth}</td>
							<td><a href="./adMemDetailMove?m_id=${mb.m_id}"><button
										class="adSearchBtn">
										<ion-icon name="reader-outline"></ion-icon>
									</button></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- Admin Member List End -->
		</div>
	</div>
</body>
<script type="text/javascript">
	function getSearchList() {
		var formdata = $("form[name=adSearchForm]").serializeObject();
		console.log(formdata);
		$
				.ajax({
					type : 'GET',
					url : "./getSearchList",
					data : formdata,
					dataType : "json",
					success : function(result) {
						console.log(result);
						//테이블 초기화
						$('.listTable > tbody').empty();
						if (result.length >= 1) {
							result
									.forEach(function(mb) {
										str = '<tr>'
										str += "<td>" + mb.m_joindate + "</td>";
										str += "<td>" + mb.m_name + "</td>";
										str += "<td>" + mb.m_id + "</td>";
										str += "<td>" + mb.m_birth + "</td>";
										str += "<td><a href='./adMemDetailMove?m_id="
												+ mb.m_id
												+ "'><button class='adSearchBtn'><ion-icon name='reader-outline'></ion-icon></button></td>";
										str += "</tr>"
										$('.listTable').append(str);
									})
						}
					}
				})
	}
</script>
</html>