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
		<video autoplay="true" loop="true" muted="muted">
			<source src="resources/videos/home.mp4" type="video/mp4">
		</video>
	</div>
	<footer>
		<jsp:include page="layout/footer.jsp" />
	</footer>
	<!--Start of Tawk.to Script-->
	<script type="text/javascript">
		var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
		(function() {
			var s1 = document.createElement("script"), s0 = document
					.getElementsByTagName("script")[0];
			s1.async = true;
			s1.src = 'https://embed.tawk.to/61dcebeeb84f7301d32a587f/1fp3fj7a9';
			s1.charset = 'UTF-8';
			s1.setAttribute('crossorigin', '*');
			s0.parentNode.insertBefore(s1, s0);
		})();
	</script>
	<!--End of Tawk.to Script-->
</body>
</html>