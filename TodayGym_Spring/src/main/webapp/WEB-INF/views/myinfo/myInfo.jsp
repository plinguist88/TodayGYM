<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보</title>
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
					<div class="myPage-myInfoUpdate">
						<div class="myPage-myInfoUpdate-title">
							<h2>회원정보 수정 || My Info Update</h2>
						</div>
						<div class="myPage-myInfoUpdate-contents">
							<form action="./myInfoUpdateProc" method="post" name="myInfoUpdateForm" onsubmit="return emptyCheck()">
								<p class="myInfo-contents">아이디 : ${myInfo.m_id}</p>
								<input type="text" name="m_name" class="myInfo-contents" value="${myInfo.m_name}" placeholder="이름">
								<input type="text" name="m_email" class="myInfo-contents" value="${myInfo.m_email}" placeholder="이메일">
								<input type="text" name="m_phone" class="myInfo-contents" value="${myInfo.m_phone}" placeholder="전화번호">
								<input type="text" name="m_birth" class="myInfo-contents" value="${myInfo.m_birth}" placeholder="생년월일">
								<p class="myInfo-contents">가입날짜 : ${myInfo.m_joindate}</p>
								<p class="myInfo-contents">포인트 : ${myInfo.m_point}</p>
								<div class="myInfo-contents-btn">
									<input type="submit" class="btn-myInfo" value="내 정보 수정하기">
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
	//__________ 회원정보 변경 빈칸확인
	function emptyCheck() {

		var form = document.myInfoUpdateForm;

		var length = form.length - 1;

		for (var i = 0; i < length; i++) {
			if (form[i].value == "" || form[i].value == null) {
				alert("빈칸이 있습니다.");
				console.log(alert);
				return false;
			} // if end

		} // for end

		return true;

	} // emptyCheck end
</script>
</html>