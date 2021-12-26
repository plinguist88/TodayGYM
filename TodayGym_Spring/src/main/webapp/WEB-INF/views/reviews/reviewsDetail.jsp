<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="wrap">
	<header>
			<jsp:include page="../layout/header.jsp" />
	</header>
	
	<section>
	<div class="detailfull">
		<div class="detailname"> <h2> 이용후기 상세</h2></div>
		<div class="detailcontents">
		<div class="detail_img"></div>
		<div class="detail_user"></div>
		<div class="detail_select"></div>
		<div class="detail_extarea"></div>
		</div>
		
	
	<div class="detail_lower">
		<div class="star_score"></div>
		<div class="detail_modify">수정</div>
		<div class="detail_delete">삭제</div>
	
	</div>	
	</div>
	</section>
	</div>
</body>
</html>