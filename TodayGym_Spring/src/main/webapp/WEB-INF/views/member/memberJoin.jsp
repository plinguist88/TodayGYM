<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JOIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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

		<div class="sub_image">
			<image class="gray_image" src="resources/img/spot/gray.jpg">
			<div class="sub_content">
				<h1>JOIN</h1>
			</div>
		</div>

		<section>
			<div class="content">
				<form name="joinFrm" class="login-form" action="./memInsert"
					method="post" onsubmit="return check()">
					
					<input type="text" class="login-input" id="mid" title="아이디" name="m_id" autofocus placeholder="아이디"> 
					<input type="button" class="idcheck-btn" value="중복확인" onclick="idcheck()">
					<input type="password" id="pw1" class="login-input" title="비밀번호" name="m_pw" placeholder="비밀번호">
					<input type="text" class="login-input" title="이름" name="m_name" placeholder="이름"> 
					<input type="text" class="login-input" title="이메일" name="m_email" placeholder="메일 ex)asd@gmail.com"> 
					<input type="text" class="login-input" title="연락처" name="m_phone" placeholder="연락처"> 
					<input type="text" class="login-input" title="생일" name="m_birth" placeholder="생일 ex)930101"> 
					<input type="submit" class="login-btn" value="가입">
				</form>
			</div>
		</section>

		<div>
			<footer>
				<jsp:include page="../layout/footer.jsp" />
			</footer>
		</div>


	</div>
	<script type="text/javascript">
		//아이디 중복 체크를 했는지 여부 저장
		var ckOk = false;

		function idcheck() {
			var inId = $("#mid").val();

			//아이디 값을 입력했는지 확인
			if (inId == "") {//입력 안했을 경우
				alert("아이디를 입력하세요.");
				$("#mid").focus();
				return;
			}

			var ckObj = {
				"mid" : inId
			};

			//ajax로 전송
			$.ajax({
				url : "idCheck",
				type : "get",
				data : ckObj,
				success : function(result) {
					//중복 id가 아니면 "ok".
					if (result == "ok") {
						alert("아이디 사용 가능");
						ckOk = true;
					} else {
						alert("사용할 수 없는 아이디");
						$("#mid").val("");//입력한 아이디 지우기
						$("#mid").focus();//아이디 입력칸에 포커스
						ckOk = false;
					}
				},
				error : function(error) {
					console.log(error);
					ckOk = false;
				}
			});
		}

		//입력 양식에 빈칸이 있는지 확인하는 함수
		function check() {
			if (ckOk == false) {
				alert("아이디 중복 체크를 해주세요.");
				return false;//submit 막기(action 실행 안됨)
			}

			//form 태그의 내용을 전부 가져오기
			var frm = document.joinFrm;
			console.log(frm);

			//submit 버튼을 제외한 나머지 input 태그의 개수
			var length = frm.length - 1;

			//input 태그 중 value가 ""인 요소가 있는지 확인(입력 안된 요소)
			for (var i = 0; i < length; i++) {
				if (frm[i].value == "" || frm[i].value == null) {
					alert(frm[i].title + " 입력!");
					frm[i].focus();
					return false;
				}
			}
			//모든 입력칸이 다 채워졌고, 아이디 중복 체크도 한 상태
			return true;//submit이 실행되도록 true를 반환
		}
	</script>
</body>
</html>