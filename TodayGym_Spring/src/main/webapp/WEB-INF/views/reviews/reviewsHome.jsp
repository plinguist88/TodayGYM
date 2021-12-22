<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/reviews_style.css">
</head>	
<body>
	<div class="wrap">
		<%-- <header>
			<jsp:include page="../layout/header.jsp" />
		</header> --%>
		<section>
			<div class="reivewfull">
				<div class="reviewmain">
					<div class="board_name">
						<h3>이용후기 게시판</h3>
					</div>
					<div class="review_menu">
					 <button class="menu_h"><a href="">헬스</a></button>
					<button class="menu_s"><a href="">수영</a></button>
					<button class="menu_c"><a href="">크로스핏</a></button>
					<button class="menu_c2"><a href="">클라이밍</a></button>
					
					</div>
					
				</div>
				<div class="table_full">
					<div class="low">
						<table class="table table-striped" style="text-align; center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th class ="column_number" style="background-color: #eeeeee; text-align: center;">번호</th>
								<th class ="column_title"style="background-color: #eeeeee; text-align: center;">제목</th>
								<th class ="column_id"style="background-color: #eeeeee; text-align: center;">작성자</th>
								<th class ="column_day"style="background-color: #eeeeee; text-align: center;">작성일</th>
								<th class ="column_score"style="background-color: #eeeeee; text-align: center;">별점</th>
							</tr>
						</thead>
						<tbody class="td_list">
							<td>1</td>
							<td>안녕</td>
							<td>박민영</td>
							<td>작성일</td>
							<td>5</td>
						</tbody>
						</table>
					</div>	
				</div>
				<div class="pageing">
				<button class="pageing_menu"><a href="">글쓰기</a></button>
				</div>
				
			</div>
		</section>
		<%-- <footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer> --%>
	</div>
</body>
</html>