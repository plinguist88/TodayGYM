<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSearch_style.css">
<form id="adSearchForm" class="adSearchForm" name="adSearchForm"
	autocomplete="off">
	<div class="adSearchContainer">
		<select class="adSearchSelect" name="adSearchSelect">
			<option selected value="">----선택----</option>
			<option value="s_code">번호</option>
			<option value="s_name">이름</option>
			<option value="s_phone">연락처</option>
			<option value="s_addr">주소</option>
		</select> <input type="text" class="keyword" name="keyword" />
		<button type="button" class="adSearchBtn" onclick="adSearch()">검색</button>
	</div>
</form>