<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원권 판매</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/product_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section>
			<div class="content-product">
				<div class="product-form">
					<div>
						<div>제품코드 : ${info.p_code}</div>
						<div>분야 : ${info.p_cate}</div>
						<div>제목 : ${info.p_title}</div>
						<select id="selectOption" onchange="optionChange()">
							<c:forEach var="option" items="${option}">
								<option
									value="${option.o_code}_${option.o_month}_${option.o_price}">
									수강기간 : "${option.o_month}" 가격 : ${option.o_price}</option>
							</c:forEach>
						</select>
						<div class="getCode"></div>
						<div class="getMonth"></div>
						<div class="getPrice"></div>
					</div>
					<div>
						<form action="./saveCart" method="get">
							<input type="text" name="op_code" id="op_code">
							<input type="submit" value="장바구니">
						</form>
					</div>
				</div>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
<script type="text/javascript">
	function optionChange() {

		var getOption = document.getElementById("selectOption").value;

		var varr;

		varr = getOption.split("_");
		$(".getCode").html(varr[0]);
		$(".getMonth").html(varr[1]);
		$(".getPrice").html(varr[2]);
		$("#op_code").attr('value', varr[0]);

	} // optionChange end
</script>
</html>