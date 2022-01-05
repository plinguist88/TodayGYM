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
$(function(){
	var msg = "${msg}";
	
	if(msg != ""){
		alert(msg);
	}
});
</script>
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="reivewfull">
				<div class="reviewmain">
					<div class="board_name">
						<h3>이용후기 게시판</h3>
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
						<table class="table table-striped"
							style="border: 1px solid #dddddd">
							<thead>
								<tr>
									<th class="column_number"
										style="background-color: #eeeeee; text-align: center;">번호</th>
									<th class="column_title"
										style="background-color: #eeeeee; text-align: center;">제목</th>
									<th class="column_id"
										style="background-color: #eeeeee; text-align: center;">작성자</th>
									<th class="column_day"
										style="background-color: #eeeeee; text-align: center;">작성일</th>
									<th class="column_score"
										style="background-color: #eeeeee; text-align: center;">별점</th>
								</tr>
							</thead>
							<c:forEach var="list" items="${rList}">
							<tbody class="td_list">
							
							<tr>
								<td>${list.r_no}</td>
								<td><a href="reviewsDetail?r_title=${list.r_title}">${list.r_title}</a></td>
								<td>${list.m_id}</td>
								<td>${list.r_date }</td>
								<%-- <td>${list.r_score }</td> --%>
								</tr>	
										
							</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
				<div class="pageing">
					<button class="pageing_menu">
						<a href="reviewsWrite">글쓰기</a>
					</button>
				</div>

			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>