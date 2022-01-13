<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome TODAY GYM</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous">
<link
	href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap"
	rel="stylesheet">

<link type="text/css" rel="stylesheet"
	href="resources/css/layout/welcome_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="content">
			<a href="home"><h1>Today GYM</h1></a>
			<p>Start of Exercise Today GYM</p>
			<div class="time">
				<div>
					<span class="hour">00</span> <span>Hours</span>
				</div>
				<div>
					<span class="minute">00</span> <span>Minutes</span>
				</div>
				<div>
					<span class="second">00</span> <span>Seconds</span>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function clock() {
			const hour = document.getElementsByClassName('hour');
			const minute = document.getElementsByClassName('minute');
			const second = document.getElementsByClassName('second');

			let time = new Date();

			let h = time.getHours();
			let m = time.getMinutes();
			let s = time.getSeconds();

			hour[0].innerHTML = h;
			minute[0].innerHTML = m;
			second[0].innerHTML = s;

			console.log(h + ':' + m + ':' + s);
		}

		setInterval(clock, 1000);
	</script>
</body>
</html>
