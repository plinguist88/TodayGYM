<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Ticket List</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adMain_style.css">
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-admin">
				<jsp:include page="../layout/adSidebar.jsp" />
				<div class="adTicketList">
					관리자 회원권 목록 페이지
				</div>
			</div>
		</section>
		<footer>
			<%-- <jsp:include page="../layout/footer.jsp" /> --%>
		</footer>
	</div>

	<script type="text/javascript">
		let list = document.querySelectorAll('.list');
			list[c:out value="${listNum}"].onclick = function(){
				let j = 0;
				while(j < list.length){
					list[j++].className = 'list';
				}
				list[c:out value="${listNum}"].className = 'list active';
			}
		}
	</script>
</body>
</html>