<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Spot Delete</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSpotDelete_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form action="adSpotDeleteAction.ad" method="get">
		<div class="container">
			<p>해당 지점을 삭제하시겠습니까?</p>
			<div class="deleteBtn">
				<input type="hidden" name="s_code" value="${s_code }" /> 
				<input type="submit" value="삭제" /> 
				<input type="button" value="취소" onclick="window.close()" />
			</div>
		</div>
	</form>
	<script type="text/javascript">
		$(function() {
			const msg = '${msg }';
			console.log(msg);

			if (msg != '') {
				alert(msg);
				window.close();
			}
		});
	</script>
</body>
</html>