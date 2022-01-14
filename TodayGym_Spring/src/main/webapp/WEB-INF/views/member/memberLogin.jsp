<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/member_style.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		$("#memberSearch_btn").click(function(){
			location.href="memberSearchId.do";
		})
	})
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		//메시지 출력 부분
		var msg = "${msg}";
		if (msg != "") {
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
		<div class="sub_image">
			<img class="gray_image" src="resources/img/spot/gray.jpg" />
			<div class="sub_content">
			<h1>LOGIN</h1>
			</div>
		</div>
		<section>
			<div class="content">
				<form class="login-form" action="./loginProc" method="post">
					<input type="text" class="login-input" name="m_id" autofocus required placeholder="아이디">
					 <input type="password" class="login-input" name="m_pw" placeholder="비밀번호" required>
					<input type="submit" class="login-btn" value="로그인">
					<input type="button" class="search-btn" id="memberSearch_btn" value="ID 찾기">
				</form>
			</div>
		</section>
		<div>
			<footer>
				<jsp:include page="../layout/footer.jsp" />
			</footer>
		</div>
	</div>

</body>
</html>