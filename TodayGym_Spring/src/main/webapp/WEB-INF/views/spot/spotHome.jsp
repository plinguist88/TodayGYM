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
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/spot_style.css">
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<!-- 헤더 끝 -->

		<div class=spot_sub_image>
			<img class=gray_img src="resources/img/spot/gray.jpg">
			<div class=spot_sub_content>
				<h1>
					<i>지점안내</i>
				</h1>

				<p>활력 있는 생활을 추구하는 당신을 위한 수준 높은 퍼블릭 스포츠센터</p>
			</div>
		</div>

		<section>
			<form>
				<fieldset>
					<legend>전체 지점안내</legend>
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="resources/img/spot/z.jpg">
						</div>

						<div class=spot_content>
							<h4>연수점</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li><span>연수점</span></li>
									<li><strong>위치</strong></li>
									<li><span>인천광역시 연수구 새말로6</span></li>
								</ul>
							</div>
							<div class =spot_btn>
							<a class=deatil_btn href="http://www.naver.com" target="">상세히 보기</a>
							<a class=kakao_btn href="http://www.naver.com" target="">문의하기</a>
							</div>
						</div>
						
							


					</div>
				</fieldset>
			</form>
		</section>




		<!-- 바디 끝 -->
		<footer> </footer>
	</div>
</body>
</html>