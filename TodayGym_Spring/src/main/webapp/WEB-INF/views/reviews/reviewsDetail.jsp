<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reviewsDetail</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/reviewsDetail.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>

		<section>
			<div class="detailfull">
				<div class="detailname" style="background-image: url('resources/img/reviews/gray.jpg');">
					<h1 style = "font-style: italic;">REVIEWS DETAIL</h1>
				</div>
				<div class="detailcontents">
					<div class="detail_img">
						<img class="img_class" src=${resourcePath } />
					</div>
					<div class="userbox">
						<div class="detail_box">
							<div class="user_box">
								<div class="detail_user">작성자</div>
								<div class="detail_user2">${rDto.m_id }</div>
							</div>
							<div class="select_box">
								<div class="detail_select">운동종목</div>
								<div class="detail_select2">${rDto.r_cate }</div>
							</div>
							<div class="titile_box">
								<div class="detail_title">제목</div>
								<div class="detail_title2">${rDto.r_title }</div>

							</div>
							<div class="detail_content">내용</div>
						</div>
						<div class="detail_content2">${rDto.r_contents }</div>
					</div>
				</div>


				<div class="detail_lower">
					<div class="star_score">
						<h1>
							별점:
							<c:forEach begin="1" end="${rDto.r_score }">
								<span>★</span>
							</c:forEach>
						</h1>
					</div>
				</div>

				<div class="button_R">
					<div class="detail_modify">
						<button
							style="background-image: url('resources/img/reviews/gray.jpg');">
							<a href="reviewsUpdate?r_no=${rDto.r_no}">수정</a>
						</button>
					</div>
					<div class="detail_delete">
						<button
							style="background-image: url('resources/img/reviews/gray.jpg');">
							<a href="reviewsDelete?r_no=${rDto.r_no}">삭제</a>
						</button>
					</div>
				</div>

			</div>
		</section>

		<footer class="footer_box">
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>