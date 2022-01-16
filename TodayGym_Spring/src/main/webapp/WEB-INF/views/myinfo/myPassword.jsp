<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 변경</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/myinfo_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<div class="myPage_title">
			<img class="title_img" src="resources/img/spot/gray.jpg">
			<div class="title_contents">비밀번호 변경</div>
		</div>
		<section>
			<div class="content-myPage">
				<div class="myPage-form">
					<jsp:include page="myPageSide.jsp" />
					<div class="myPage-myPwdUpdate">
						<div class="myPage-myPwdUpdate-title">
							<h2>비밀번호 변경 || My Password Change</h2>
						</div>
						<div class="myPage-myPwdUpdate-contents">
							<form action="./myPwdUpdateProc" method="post" name="myPwdUpdateForm" onsubmit="return emptyCheck()">
								<input type="password" class="myPwd-contents" id="prePwd" placeholder="현재 비밀번호">
								<div class="contents-prePwdCheck"></div>
								<div class="myPwd-contents-btn">
									<input type="button" class="btn-myPwd" value="현재 비밀번호 확인" onclick="preCheck()">
								</div>
								<input type="password" name="m_pw" class="myPwd-contents" id="newPwd" placeholder="새 비밀번호">
								<input type="password" class="myPwd-contents" id="newPwdCheck" placeholder="새 비밀번호 확인">
								<div class="contents-updatePwdCheck"></div>
								<div class="myPwd-contents-btn">
									<input type="submit" class="btn-myPwd" value="비밀번호 변경">
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
<script type="text/javascript">
	//__________ 마이페이지 알람
	$(function() {

		var msg = "${alert}";

		if (msg != "") {
			alert(msg);
		}

	})

	//__________ 현재 비밀번호 확인
	var prePwdCheck = false;

	function preCheck() {

		var prePwd = document.getElementById("prePwd").value;
		//var prePwd = $("#prePwd").val();

		if (prePwd == "") {
			alert("현재 비밀번호를 입력하세요.");
			$("#prePwd").focus();

			return;
		} // if end

		var prePwdObj = {
			"prePwd" : prePwd
		};

		$.ajax({
			url : "prePwdCheck",
			type : "post",
			data : prePwdObj,
			success : function(result) {
				if (result == "true") {
					$(".contents-prePwdCheck").text("현재 비밀번호가 일치 합니다.");
					$(".contents-prePwdCheck").css("color", "blue");
					$(".contents-prePwdCheck").css("display", "block");

					prePwdCheck = true;
				} // if end

				else {
					$(".contents-prePwdCheck").text("현재 비밀번호가 일치하지 않습니다.");
					$(".contents-prePwdCheck").css("color", "red");
					$(".contents-prePwdCheck").css("display", "block");
					$("#prePwd").focus();

					prePwdCheck = false;
				} // else end
			},

			error : function(error) {
				console.log(error);
				prePwdCheck = false;
			}
		}); // ajax end

	} // preCheck end

	//__________ 새 비밀번호 일치 확인
	var updatePwdCheck = false;

	$("#newPwdCheck").focusout(function() {

		var newPwd = document.getElementById("newPwd").value;
		var newPwdCheck = document.getElementById("newPwdCheck").value;
		//var newPwd = $("#newPwd").val();
		//var newPwdCheck = $("#newPwdCheck").val();

		if (newPwd != newPwdCheck || newPwd == "" || newPwdCheck == "") {
			$(".contents-updatePwdCheck").text("새 비밀번호가 틀립니다.");
			$(".contents-updatePwdCheck").css("color", "red");
			$(".contents-updatePwdCheck").css("display", "block");

			updatePwdCheck = false;
		} // if end

		else {
			$(".contents-updatePwdCheck").text("새 비밀번호가 일치 합니다.");
			$(".contents-updatePwdCheck").css("color", "blue");
			$(".contents-updatePwdCheck").css("display", "block");

			updatePwdCheck = true;
		} // else end

	});

	//__________ 비밀번호 변경 빈칸확인
	function emptyCheck() {

		if (prePwdCheck == false) {
			alert("현재 비밀번호를 확인하세요.");

			return false;
		} // if end

		if (updatePwdCheck == false) {
			alert("새 비밀번호를 확인하세요.");

			return false;
		} // if end

		var form = document.myPwdUpdateForm;
		var length = form.length - 1;

		for (var i = 0; i < length; i++) {
			if (form[i].value == "" || form[i].value == null) {
				alert("빈칸이 있습니다.");

				return false;
			} // if end

		} // for end

		return true;

	} // emptyCheck end
</script>
</html>