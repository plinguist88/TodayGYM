<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/member_style.css">
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
		<section>
			<div class="content">
				<form class="login-form" action="./loginProc" method="post">
					<h1 class="login-header">로그인</h1>
					<input type="text" class="login-input" name="m_id" autofocus required placeholder="아이디">
					 <input type="password" class="login-input" name="m_pwd" placeholder="비밀번호" required>
					<input type="submit" class="login-btn" value="로그인">
					<input type="submit" class="search-btn" value="ID / PASSWORD 찾기">
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