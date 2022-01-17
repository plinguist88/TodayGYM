<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/layout/header_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
<nav class="navbar">
	<div class="navbar_logo">
		<a href="/todaygym"><abbr title="TodayGym">TodayGYM<span
				class="navbar_icon"><ion-icon name="bicycle-outline"></ion-icon></span>
		</abbr></a>
	</div>
	<div class="navbar_menu">
		<ul>
			<li><a href="home">HOME</a></li>
			<li><a href="about">ABOUT</a></li>
			<li><a href="product">PROGRAM</a></li>
			<li><a href="spotHome">SPOT</a></li>
			<li><a href="review">REVIEW</a></li>
		</ul>
	</div>
	<div class="navbar_sign">
		<ul>
			<c:choose>
				<c:when test="${sessionScope.mb.m_id == null}">
					<li><a href="memberJoin"><abbr title="회원가입"><span
								class="navbar_icon"><ion-icon name="person-add-outline"></ion-icon>회원가입</span></abbr></a></li>
					<li><a href="memberLogin"><abbr title="로그인"><span
								class="navbar_icon"><ion-icon name="lock-closed-outline"></ion-icon>로그인</span></abbr></a></li>
				</c:when>
				<c:when test="${sessionScope.mb.m_id != null}">
					<c:if test="${sessionScope.mb.m_level == 1}">
						<li><a href="adMainMove.ad?side=0"><abbr title="관리자페이지"><span
									class="navbar_icon"><ion-icon name="stats-chart-outline"></ion-icon>관리자</span></abbr></a></li>
					</c:if>
					<c:if test="${sessionScope.mb.m_level == 0}">
						<li><a href="myCart"><abbr title="장바구니"><span
									class="navbar_icon"><ion-icon name="cart-outline"></ion-icon>장바구니</span></abbr></a></li>
					</c:if>
					<li><a href="myInfo"><abbr title="마이페이지"><span
								class="navbar_icon"><ion-icon
										name="person-circle-outline"></ion-icon>${mb.m_id }</span></abbr></a></li>
					<li><a href="logout"><abbr title="로그아웃"><span
								class="navbar_icon"><ion-icon name="lock-open-outline"></ion-icon>로그아웃</span></abbr></a></li>
				</c:when>
			</c:choose>
		</ul>
	</div>
</nav>