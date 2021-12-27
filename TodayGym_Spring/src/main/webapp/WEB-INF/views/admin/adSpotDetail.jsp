<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Spot Detail</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSpotDetail_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
	<div class="content-admin">
		<div class="content">
			<!-- Admin Spot Detail Start  -->
			<table>
				<thead>
					<th></th>
				</thead>
				<tbody>
				
				</tbody>
			</table>
			${spotDto.s_code }
			${spotDto.s_name }
			${spotDto.s_phone }
			${spotDto.s_addr }
			${spotDto.s_content }
			<!-- Admin Spot Detail End  -->
		</div>
	</div>
</body>
</html>