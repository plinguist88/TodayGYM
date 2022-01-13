<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>TodayGYM Home</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/layout/home_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="layout/header.jsp" />
	</header>
	<div class="content_main">
		<video autoplay="autoplay" loop="loop" muted="muted">
			<source src="resources/videos/home.mp4" type="video/mp4">
		</video>
	</div>
	<footer>
		<jsp:include page="layout/footer.jsp" />
	</footer>
</body>
</html>