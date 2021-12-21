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
					<div class="ohgvva2">
						<div class="oh1"><a href="">헬스</a></div>
						<div class="oh2"><a href="">수영</a></div>
						<div class="oh3"><a href="">크로스핏</a></div>
						<div class="oh4"><a href="">클라이밍</a></div>
					</div>
				</div>
				<div class="ohgvva">
					<div class="low">
						<table class="table table-striped" style="text-align; center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th style="background-color: #eeeeee; text-align: center;">작성자</th>
								<th style="background-color: #eeeeee; text-align: center;">작성일</th>
								<th style="background-color: #eeeeee; text-align: center;">별점</th>
							</tr>
						</thead>
						<tbody>
							<td>1</td>
							<td>안녕</td>
							<td>박민영</td>
							<td>작성일</td>
							<td>5</td>
							
						
						</tbody>
						</table>
						<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>
					</div>	
				</div>
			</div>
		</section>
		<%-- <footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer> --%>
	</div>
</body>
</html>