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
	href="resources/css/reviewsWrite.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>


		<section>
			<form>
				<div class="review_full">

					<div class="review_title">
						<h1>글쓰기</h1>
					</div>
					<div class="review_event">
						<select name="event">
							<option value="">종목선택</option>
							<option value="헬스">헬스</option>
							<option value="수영">수영</option>
							<option value="클라이밍">클라이밍</option>
							<option value="크로스핏">크로스핏</option>
						</select>
					</div>
					<div class="review_container">
						<div class="review_sub">
							<input class="input_title" type="text" value="제목을 입력하세요">
						</div>
						<div class="review_content">
							<textarea rows="15" cols=80 " placeholder="내용을적어주세요"></textarea>
						</div>
						<div class="review_star">
							<input type="radio" value="★"> <input type="radio"
								value="★"> <input type="radio" value="★"> <input
								type="radio" value="★"> <input type="radio" value="★">
						</div>
						<div class="review_file">
							<label style="display: block; border: 3px solid #5a5a5a;">업로드</label>
							<input type="file" value="파일선택">
						</div>
						<div class="review_button">
							<input type="submit" value="작성완료"> <input type="button"
								value="취소">
						</div>
					</div>
				</div>
			</form>
		</section>

		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>

	</div>
</body>
</html>