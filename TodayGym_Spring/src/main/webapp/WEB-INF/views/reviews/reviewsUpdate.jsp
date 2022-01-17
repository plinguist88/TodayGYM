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
			<form action="reviewsUpdateAct" method="post" name="rdto">
				<div class="review_full">

					<div class="review_title"
						style="background-image: url('resources/img/reviews/gray.jpg');">
						<h1>글수정</h1>
					</div>
					<input type="hidden" name="r_no" value="${rdto.r_no }" />
					<div class="review_event">
						<select class="select_cate" name="r_cate">
							<option value=${rdto.r_cate }>${rdto.r_cate }</option>
							<option value="헬스">헬스</option>
							<option value="수영">수영</option>
							<option value="클라이밍">클라이밍</option>
							<option value="크로스핏">크로스핏</option>
						</select>
					</div>
					<div class="review_container">
						<div class="review_sub">
							<input class="input_title" type="text" placeholder="제목을 입력하세요"
								value="${rdto.r_title}" name="r_title">
						</div>
						<div class="review_content">
							<textarea rows="15" cols=83.5 " placeholder="내용을적어주세요"
								name="r_contents">${rdto.r_contents}</textarea>
						</div>
						<div class="review_star space-x-4 mx-auto" name="r_contents">
							<input type="hidden" name="r_score" id="r_score"
								value="${rdto.r_score}"> <input type="radio"
								id="5-stars" name="rs" value="5" v-model="ratings" /> <label
								for="5-stars" class="star pr-4">★</label> <input type="radio"
								id="4-stars" name="rs" value="4" v-model="ratings" /> <label
								for="4-stars" class="star">★</label> <input type="radio"
								id="3-stars" name="rs" value="3" v-model="ratings" /> <label
								for="3-stars" class="star">★</label> <input type="radio"
								id="2-stars" name="rs" value="2" v-model="ratings" /> <label
								for="2-stars" class="star">★</label> <input type="radio"
								id="1-star" name="rs" value="1" v-model="ratings" /> <label
								for="1-star" class="star">★</label>
						</div>
						<!-- <div class="review_file">
							<label style="display: block; border: 3px solid #5a5a5a;">업로드</label>
							<input type="file" name="r_image" value="파일선택">
						</div> -->
						<div class="review_button">
							<input type="submit" value="작성완료"> <a href="review"><input
								type="button" value="취소"></a>
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
<script type="text/javascript">
	var score = "${rdto.r_score}";
	var rds = $("input[name='rs']");
	//console.log(rds[0].value);
	for (var i = 0; i < rds.length; i++) {
		if (rds[i].value == score) {
			rds[i].checked = true;
			break;
		}
	}

	$("input[name='rs']").on("click", function() {
		var score = $("input[name='rs']:checked").val();
		//alert(score);
		$("#r_score").val(score);
	});
</script>
</html>