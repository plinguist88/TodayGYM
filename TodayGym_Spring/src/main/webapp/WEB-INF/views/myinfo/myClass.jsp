<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강내역</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/myinfo_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<div class="myPage_title">
			<img class="title_img" src="resources/img/spot/gray.jpg">
			<div class="title_contents">수강내역</div>
		</div>
		<section>
			<div class="content-myPage">
				<div class="myPage-form">
					<jsp:include page="myPageSide.jsp" />
					<div class="myPage-myClass">
						<div class="myPage-myClass-">
							<div class="myPage-myClass-title">
								<h2>수강내역 || My Class</h2>
							</div>
							<div class="myPage-myClass-contents">
								<c:forEach var="myClass" items="${myClass}">
									<div class="myClass-contents">
										<div class="contents-img">
											<img src="${myClass.p_img}" width="100%" height="100%">
										</div>
										<div class="contents-info">
											<div class="contents-info-title">${myClass.p_subcate}</div>
											<div class="contents-info-item">
												<div class="item-month">수강기간 : ${myClass.o_month}</div>
												<div class="item-issuedate">
													발급날짜 :
													<fmt:formatDate value="${myClass.t_issuedate}"
														pattern="yyyy-MM-dd" />
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="myPage-myClass-paging">
							<div class="myPage-myClass-pageHtml">${pageHtml}</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>