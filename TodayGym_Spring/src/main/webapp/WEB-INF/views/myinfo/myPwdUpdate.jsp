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
								<p class="contents-prePwdCheck"></p>
								<div class="btn"><input type="button" class="btn-prePwdCheck" value="현재 비밀번호 확인" onclick="preCheck()"></div>
								<input type="password" class="myPwd-contents" id="newPwd" placeholder="새 비밀번호">
								<input type="password" class="myPwd-contents" id="newPwdCheck" placeholder="새 비밀번호 확인">
								<p class="contents-updatePwdCheck"></p>
								<div class="myPwd-contents-btn">
									<input type="submit" class="btn-myPwdUpdate" value="비밀번호 변경">
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

// 현재 비밀번호 확인
var prePwdCheck = false;

function preCheck() {
	
	var prePwd = $("#prePwd").val();
	
	if(prePwd == "") {
		alert("현재 비밀번호를 입력하세요.");
		$("#prePwd").focus();
		
		return;
	} // if end
	
	var prePwdObj = {"prePwd" : prePwd};
	
	$.ajax({
		url: "prePwdCheck",
		type: "post",
		data: prePwdObj,
		success: function(result) {
			if(result == "true") {
				$(".contents-prePwdCheck").text("현재 비밀번호가 일치 합니다.");
				$(".contents-prePwdCheck").css("color", "blue");
				$(".contents-prePwdCheck").css("display", "inline-block");
				prePwdCheck = true;
				
			} // if end
			
			else {
				$(".contents-prePwdCheck").text("현재 비밀번호가 일치하지 않습니다.");
				$(".contents-prePwdCheck").css("color", "red");
				$(".contents-prePwdCheck").css("display", "inline-block");
				$("#prePwd").focus();
				prePwdCheck = false;
				
			} // else end
		},
		
		error: function(error) {
			console.log(error);
			prePwdCheck = false;
		}
	}); // ajax end
	
} // preCheck end

// 비밀번호 일치 확인
var updatePwdCheck = false;
$("#newPwdCheck").focusout(function() {
	
	var newPwd = $("#newPwd").val()
	var newPwdCheck = $("#newPwdCheck").val()
	
	if(newPwd != newPwdCheck || newPwd == "" || newPwdCheck == "") {
		$(".contents-updatePwdCheck").text("새 비밀번호가 틀립니다.");
		$(".contents-updatePwdCheck").css("color", "red");
		$(".contents-updatePwdCheck").css("display", "inline-block");
		updatePwdCheck = false;
		
	} // if end
	
	else {
		$(".contents-updatePwdCheck").text("새 비밀번호가 일치 합니다.");
		$(".contents-updatePwdCheck").css("color", "blue");
		$(".contents-updatePwdCheck").css("display", "inline-block");
		updatePwdCheck = true;
		
	} // else end

});
// 비밀번호 변경 빈칸 확인
function emptyCheck() {
	
	if(prePwdCheck == false) {
		alert("현재 비밀번호를 확인하세요.");
		
		return false;
	} // if end
	
	if(updatePwdCheck == false) {
		alert("새 비밀번호를 확인하세요.");
		
		return false;
	} // if end
	
	var form = document.myPwdUpdateForm;
	
	var length = form.length - 1;
	
	for(var i = 0; i < length; i++) {
		if(form[i].value == "" || form[i].value == null) {
			alert("빈칸이 있습니다.");
			
			return false;
		} // if end
		
	} // for end
	
	return true;
	
} // emptyCheck end

</script>
</html>