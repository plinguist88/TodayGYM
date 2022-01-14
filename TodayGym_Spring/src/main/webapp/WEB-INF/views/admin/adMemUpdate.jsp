<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 수정 페이지</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMemUpdate_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>

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
		<section>
			<div class="content-admin">
				<div class="content-adSidebar">
					<jsp:include page="../layout/adSidebar.jsp" />
				</div>
				<form action="./adMemUpdateAct" class="content" method="post"
					enctype="multipart/form-data"
					onkeydown="return event.key != 'Enter';">
					<div class="content">
						<table class="updateTable">
							<thead class="top">
								<tr>
									<th colspan="5"><h1>회원 정보 수정</h1></th>
								</tr>
							</thead>
							<thead class="bottom">
								<tr>
									<th>이름</th>
									<td><input type="text" class="admem-up-write"
										name="m_name" autofocus placeholder="이름"
										value="${memdto.m_name}" required></td>
									<th>가입일자</th>
									<td>${memdto.m_joindate}</td>
								</tr>
							</thead>
							<tbody class="updateList">
								<tr>
									<th>아이디</th>
									<td>${memdto.m_id}<input type="hidden" name="m_id"
										value="${memdto.m_id}">
									</td>
									<th>생년월일</th>
									<td><input type="text" class="admem-up-write"
										name="m_birth" autofocus placeholder="생년월일"
										value="${memdto.m_birth}" required></td>
								</tr>
								<tr>
									<th>연락처</th>
									<td><input type="text" class="admem-up-write"
										name="m_phone" autofocus maxlength="11" placeholder="연락처"
										value="${memdto.m_phone}" required></td>
									<th>E-mail</th>
									<td><input type="text" class="admem-up-write"
										name="m_email" autofocus placeholder="E-mail"
										value="${memdto.m_email}" required></td>
								</tr>
								<tr>
									<th>보유 회원권</th>
									<td>---</td>
									<th>보유 포인트</th>
									<td>---</td>
								</tr>
							</tbody>
						</table>
						<div class="updateBtn">
							<button class="upBtn" type="submit">수정 완료</button>
						</div>
					</div>
				</form>
			</div>
		</section>
	</div>
</body>
</html>