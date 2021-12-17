<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link type="text/css" rel="stylesheet"
	href="resources/css/member_style.css">
	
<body>
	<div class="login">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<h1>로그인</h1>
		<form method="post" action="">
			<p>
				<input type="text" name="login" value="" placeholder="ID">
			</p>
			<p>
				<input type="password" name="password" value=""
					placeholder="Password">
			</p>
			<p class="remember_me">
				<label> <input type="checkbox" name="remember_me"
					id="remember_me"> 비밀번호를 저장하시겠습니까?
				</label>
			</p>
			<p class="submit">
				<input type="submit" name="commit" value=로그인 />
			</p>
		</form>
	</div>

	<div>
	<p> id / pw 찾기 </p>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>



</body>
</html>