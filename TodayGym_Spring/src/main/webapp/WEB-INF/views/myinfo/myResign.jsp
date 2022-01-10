<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원탈퇴</title>
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
			<div class="title_contents">회원탈퇴</div>
		</div>
		<section>
			<div class="content-myPage">
				<div class="myPage-form">
					<jsp:include page="myPageSide.jsp" />
					<div class="myPage-myResign">
						<div class="myPage-myResign-title">
							<h2>회원탈퇴 || My Resign</h2>
						</div>
						<div class="myPage-myResign-contents-guide">
							<div class="myResign-contents-guide">
								<div>회원탈퇴 안내입니다.</div><br>
								<div>1. 회원탈퇴 시 회원권은 재발급이 불가능 합니다.</div><br>
								<div>2. 회원권 및 포인트는 소멸합니다.</div><br>
								<div>3. 작성한 후기는 자동 삭제됩니다.</div><br>
								<div>4. 삭제시 계정복구는 불가능합니다.</div><br>
							</div>
							<div class="myResign-contents-btn">
								<input type="button" class="btn-myResign" value="탈퇴 하겠습니다." onclick="guideCheck()">
							</div>
						</div>
						<div class="myPage-myResign-contents">
							<form action="./myResignProc" method="post" name="myResignCheckForm" onsubmit="return emptyCheck()">
								<div class="myResign-contents">아이디 : ${myInfo.m_id}</div>
								<input type="password" name="m_pw" class="myResign-contents" id="prePwd" placeholder="비밀번호 확인">
								<div class="contents-resignPwdCheck">비밀번호를 확인하세요!</div>
								<div class="myResign-contents-btn">
									<input type="submit" class="btn-myResign" value="회원탈퇴">
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

	//__________ 회원탈퇴 안내 확인
	function guideCheck() {
		$(".myPage-myResign-contents-guide").css("display", "none");
		$(".myPage-myResign-contents").css("display", "block");
	} // emptyCheck end

	//__________ 회원탈퇴 비밀번호 확인
	var prePwdCheck = false;

	$("#prePwd").focusout(function() {
		var prePwd = document.getElementById("prePwd").value;
		//var prePwd = $("#prePwd").val();

		var prePwdObj = {
			"prePwd" : prePwd
		};

		$.ajax({
			url : "prePwdCheck",
			type : "post",
			data : prePwdObj,
			success : function(result) {
				if (result == "true") {
					$(".contents-resignPwdCheck").text("비밀번호를 확인 했습니다.");
					$(".contents-resignPwdCheck").css("color", "blue");
					console.log(result);
					prePwdCheck = true;
				} // if end

				else {
					$(".contents-resignPwdCheck").text("비밀번호가 틀렸습니다.");
					$(".contents-resignPwdCheck").css("color", "red");
					$("#prePwd").focus();
					
					prePwdCheck = false;
				} // else end
			},

			error : function(error) {
				console.log(error);
				prePwdCheck = false;
			}
		}); // ajax end
	});

	//__________ 회원탈퇴 빈칸확인
	function emptyCheck() {

		if (prePwdCheck == false) {
			alert("비밀번호를 확인하세요.");

			return false;
		} // if end

		return true;

	} // emptyCheck end
</script>
</html>