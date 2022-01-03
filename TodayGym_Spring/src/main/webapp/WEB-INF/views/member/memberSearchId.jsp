<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>아이디 찾기</title>
</head>
<body>
	<div class="content container">
		<form action="searchId.do" method="get">
			<div class="center large">
				<h3>아이디 찾기</h3>
			</div>
			<div>
				<p>
					<label for="email">Email</label>
					<input class="input" type="text" id="email" name="email" required>
				</p>
				<p class="center">
					<button type="submit" id=search class="serachId_btn">find</button>
				</p>
				<p>${searchId}</p>
			</div>
		</form>
	</div>
</body>
</html>