<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSearch_style.css">
<form id="adSearchTicketList.ad" class="adSearchForm" name="adSearchForm"
	autocomplete="off" method="get">
	<div class="adSearchContainer">
		<select class="adSearchSelect" name="adSearchSelect">
			<option selected value="">----선택----</option>
			<option value="t_no">회원권 번호</option>
			<option value="b_cate">회원권 종목</option>
			<option value="m_id">회원 이름</option>
		</select> <input type="text" class="keyword" name="keyword" />
		<button type="button" class="adSearchBtn">검색</button>
	</div>
</form>