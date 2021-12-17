<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/member_style.css">
</head>
<body>
	<div class="login">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>

	</div>
	
<div class="signForm">
		<div id="warning"></div>
		<h1 id="title">Today Gym</h1>
		<div class="Form">	
			<input type="text" class="inputBox" placeholder="ID" name="uCode"
				onkeyup=" korCheck(this, event)" onfocus="reInput()"
				onblur="dupCheck()" /> <input type="hidden" name="idCheck"
				value="false" />
		</div>
		<div class="Form">
			<input type="password" class="inputBox" placeholder="PW" name="aCode"
				onblur="pwValidateCheck(this)" />
		</div>
		<div class="Form">
			<input type="password" class="inputBox" placeholder="Confirm PW"
				name="aCode" onblur="comfirmPw()" />
		</div>
		<div class="Form">
			<input type="text" class="inputBox" placeholder="UserName"
				name="uName" onblur="nameCheck(this)" />
		</div>
		<div class="Form">
			<span id="info">Birth</span> <input type="date" class="infoBox"
				name="birth" />
		</div>
		<div class="eMailForm">
		<span id="info">Email</span><input type="text" class="eMailBox" placeholder="email" name="email" />
	
		</div>
		<div class="Form">
			<span id="info">Phone</span><input type="text" class="infoBox"
				placeholder="Phone" name="phone" />
		</div>
		
		<div class="Form">
		<span id="info">profile</span><input type="file" name="mpfile" placeholder="choose file"/>
		</div>

		<button type="button" class="btn" onclick="sendJoinInfo()">
			CREATE</button>
		<div class="bottomText">
			Already have an account? <a href="/LogInForm" id="aText"><b>sign-in</b></a>
		</div>
	</div>


	<div>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>



</body>
</html>