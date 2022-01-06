<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기 게시판</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/reviews_style.css">
<script type="text/javascript">
	$(function() {
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../layout/header.jsp" />
	</header>
	<div class="reivewfull">
		<div class="reviewmain">
			<div class="board_name">
				<h2>이용후기 게시판</h2>
			</div>
			<div class="review_menu">
				<button class="menu_h">
					<a href="">헬스</a>
				</button>
				<button class="menu_s">
					<a href="">수영</a>
				</button>
				<button class="menu_c">
					<a href="">크로스핏</a>
				</button>
				<button class="menu_c2">
					<a href="">클라이밍</a>
				</button>
			</div>
		</div>
		<div class="table_full">
			<div class="low">
				<table class="table_review">
					<thead>
						<tr>
							<th class="column_number">번호</th>
							<th class="column_cate">종목</th>
							<th class="column_title">제목</th>
							<th class="column_id">작성자(ID)</th>
							<th class="column_day">작성일</th>
							<th class="column_score">별점</th>
						</tr>
					</thead>
					<tbody class="td_list">
						<c:forEach var="list" items="${rList}">
							<tr>
								<td>${list.r_no}</td>
								<td>${list.r_cate}</td>
								<td><a href="reviewsDetail?r_title=${list.r_title}">${list.r_title}</a></td>
								<td>${list.m_id}</td>
								<td>${list.r_date }</td>
								<%-- <td>${list.r_score }</td> --%>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<div class="pageing" style="text-align: center; margin-top: 10px;">
			<div class="rvpaging">${paging}</div>
			<button class="pageing_menu">
				<a href="reviewsWrite" style="font-size: 25px" border="2px solid skyblue" >글쓰기</a>
			</button>
		</div>
	</div>
	<footer>
		<jsp:include page="../layout/footer.jsp" />
	</footer>
</body>
</html>