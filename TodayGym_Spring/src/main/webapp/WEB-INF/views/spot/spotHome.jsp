<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지점안내페이지</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<link type="text/css" rel="stylesheet"
	href="resources/css/spot_style.css">
<script src="https://kit.fontawesome.com/c182b5bf7c.js"
	crossorigin="anonymous"></script>
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
					<i>SPOT</i>
				</h1>

				<p>활력 있는 생활을 추구하는 당신을 위한 수준 높은 퍼블릭 스포츠센터</p>
			</div>
		</div>



		
		<section>
			<form>
				<fieldset >
					<c:forEach items="${sList}" var ="sList" varStatus="st">
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="${imgList[st.index].simg_sys}">
						</div>

						<div class=spot_content>
							<h4 class="spot_name">${sList.s_name}</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li class=li_point><span>${sList.s_name}</span></li>
									<li><strong>위치</strong></li>
									<li class=li_point><span>${sList.s_addr}</span></li>
								</ul>
							</div>
							<div class=spot_btn>
								<div>
									<a class=detail_btn href="spotDetail?s_code=${sList.s_code}" target="">상세히
										보기</a>
								</div>
								<div>
									<a class=kakao_btn href="https://open.kakao.com/o/s1xuUCRd" target=""><i
										class="fas fa-comment"></i>문의하기</a>

								</div>
							</div>
						</div>
					</div>
					</c:forEach>
				</fieldset>
			</form>
		</section>
		<!--  
		<section>
			<form>
				<fieldset>
					
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="resources/img/spot/z.jpg">
						</div>

						<div class=spot_content>
							<h4 class="spot_name">구월점</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li class=li_point><span>연수점</span></li>
									<li><strong>위치</strong></li>
									<li class=li_point><span>인천광역시 연수구 새말로6</span></li>
								</ul>
							</div>
							<div class=spot_btn>
								<div>
									<a class=detail_btn href="http://www.naver.com" target="">상세히
										보기</a>
								</div>
								<div>
									<a class=kakao_btn href="http://www.naver.com" target=""><i
										class="fas fa-comment"></i>문의하기</a>

								</div>
							</div>
						</div>
					</div>
				</fieldset>
			</form>
		</section>
		
		
		<section>
			<form>
				<fieldset>
					
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="resources/img/spot/v.jpg">
						</div>

						<div class=spot_content>
							<h4 class="spot_name">주안점</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li class=li_point><span>연수점</span></li>
									<li><strong>위치</strong></li>
									<li class=li_point><span>인천광역시 연수구 새말로6</span></li>
								</ul>
							</div>
							<div class=spot_btn>
								<div>
									<a class=detail_btn href="http://www.naver.com" target="">상세히
										보기</a>
								</div>
								<div>
									<a class=kakao_btn href="http://www.naver.com" target=""><i
										class="fas fa-comment"></i>문의하기</a>

								</div>
							</div>
						</div>
					</div>
				</fieldset>
			</form>
		</section>
		
		
		<section>
			<form>
				<fieldset>
					
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="resources/img/spot/n.jpg">
						</div>

						<div class=spot_content>
							<h4 class="spot_name">학익점</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li class=li_point><span>연수점</span></li>
									<li><strong>위치</strong></li>
									<li class=li_point><span>인천광역시 연수구 새말로6</span></li>
								</ul>
							</div>
							<div class=spot_btn>
								<div>
									<a class=detail_btn href="http://www.naver.com" target="">상세히
										보기</a>
								</div>
								<div>
									<a class=kakao_btn href="http://www.naver.com" target=""><i
										class="fas fa-comment"></i>문의하기</a>

								</div>
							</div>
						</div>
					</div>
				</fieldset>
			</form>
		</section>
		
		
		<section>
			<form>
				<fieldset>
					
					<div class=spot_container>
						<div class=spot_image1>
							<img class=z_img src="resources/img/spot/m.jpg">
						</div>

						<div class=spot_content>
							<h4 class="spot_name">만수점</h4>
							<div class=spot_info>
								<ul class=info_list>
									<li><strong>지점</strong></li>
									<li class=li_point><span>연수점</span></li>
									<li><strong>위치</strong></li>
									<li class=li_point><span>인천광역시 연수구 새말로6</span></li>
								</ul>
							</div>
							<div class=spot_btn>
								<div>
									<a class=detail_btn href="http://www.naver.com" target="">상세히
										보기</a>
								</div>
								<div>
									<a class=kakao_btn href="http://www.naver.com" target=""><i
										class="fas fa-comment"></i>문의하기</a>

								</div>
							</div>
						</div>
					</div>
				</fieldset>
			</form>
		</section>
		
-->




		<!-- 바디 끝 -->
		<footer>
		<jsp:include page="../layout/footer.jsp" />
		 </footer>
	</div>
</body>
</html>