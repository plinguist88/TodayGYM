<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="myPage-list">
	<div class="myPage-list-user">
		<div class="user-img"><img src="resources/img/mypage/mypage_logo.png" class="user-img-logo"></div>
		<div class="user-name"><b>${mb.m_name}</b>님 환영합니다.</div>
	</div>
	<div class="myPage-list-contents">
		<ul style="margin: 0; padding: 0">
			<li><a href="./myInfo">내 정보</a></li>
			<li><a href="./myPassword">비밀번호 변경</a></li>
			<li><a href="./myClass">수강내역</a></li>
			<!--  <li><a href="./myResign">회원탈퇴</a></li> -->
		</ul>
	</div>
</div>