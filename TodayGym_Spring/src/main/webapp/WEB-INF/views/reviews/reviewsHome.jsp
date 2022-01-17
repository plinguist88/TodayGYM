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
		<div class="board_name"
			style="background-image: url('resources/img/reviews/gray.jpg');">
			<h1 style = "font-style: italic;">REVIEW ${msg2 }</h1>
		</div>

		<div class="reviewmain">
			<div class="review_menu">

				<button class="menu" value="전체"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="review">전체</a>

				</button>
				<button class="menu" value="헬스"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="review?r_cate=헬스">헬스</a>
				</button>
				<button class="menu"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="review?r_cate=수영">수영</a>
				</button>
				<button class="menu"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="review?r_cate=크로스핏">크로스핏</a>
				</button>
				<button class="menu"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="review?r_cate=클라이밍">클라이밍</a>
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
								<td><a href="reviewsDetail?r_no=${list.r_no}">${list.r_title}</a></td>
								<td>${list.m_id}</td>
								<td>${list.r_date }</td>

								<td><c:forEach begin="1" end="${list.r_score }">
										<span>★</span>
									</c:forEach></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>

			<div class="pageing" style="text-align: center; margin-top: 10px;">
				<div class="rvpaging">${paging}</div>
			</div>
			<div class="button_class">
				<button class="pageing_menu"
					style="background-image: url('resources/img/reviews/gray.jpg');">
					<a href="reviewsWrite" style="font-size: 25px"
						border="2px solid skyblue">글쓰기</a>
				</button>
			</div>
		</div>
	</div>
	<footer class="footer_class">
		<jsp:include page="../layout/footer.jsp" />
	</footer>
</body>
</html>