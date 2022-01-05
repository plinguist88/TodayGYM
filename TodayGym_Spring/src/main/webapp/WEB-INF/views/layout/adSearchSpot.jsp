<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSearch_style.css">
<form action="adSearchSpotList.ad" id="adSearchForm" class="adSearchForm" name="adSearchForm"
	autocomplete="off" method="get">
	<div class="adSearchContainer">
		<input type="hidden" name="side" value="3" />
		<select class="adSearchSelect" name="adSearchSelect">
			<option selected value="">----선택----</option>
			<option value="s_code">지점 번호</option>
			<option value="s_name">지점 이름</option>
		</select> <input type="text" class="keyword" name="keyword"/>
		<button type="submit" class="adSearchBtn">검색</button>
	</div>
</form>