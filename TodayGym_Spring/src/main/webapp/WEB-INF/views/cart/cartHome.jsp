<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/cart_style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<jsp:include page="../layout/header.jsp" />
		</header>
		<section class="cart_section">
			<div class="cart_title">
				<h1>회원권 장바구니</h1>
			</div>
			<hr>
			<div class="cart_info">
			 <ul>
			 	<li class="cart_info_li">장바구니 상품은 최대 30일간 보관됩니다</li>
			 	<li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
			 	<li>단순변심으로 인한 주문취소 및 변경 시 교환 환불이 어려울 수 있으니 꼭 다시 확인해 주시기 바랍니다.</li>
			 </ul>
			</div>
			<div class="cart_info_table">
				<table>
					<tr>
						<th> <input type="checkbox"> </th>
						<th colspan="2">상품정보</th>
						<th>옵션</th>
						<th>상품금액</th>
						<th>비고</th>
					</tr>
					<tr>
						<td>  <input type="checkbox"> </td>
						<td> DB상품이미지 </td>
						<td> DB상품이름 </td>
						<td> DB옵션이름 </td>
						<td> DB상품금액 </td>
						<td>  </td>
					</tr>
					<tr>
						<td>  <input type="checkbox"> </td>
						<td> DB상품이미지 </td>
						<td> DB상품이름 </td>
						<td> DB옵션이름 </td>
						<td> DB상품금액 </td>
						<td>  </td>
					</tr>
					<tr>
						<td>  <input type="checkbox"> </td>
						<td> DB상품이미지 </td>
						<td> DB상품이름 </td>
						<td> DB옵션이름 </td>
						<td> DB상품금액 </td>
						<td>  </td>
					</tr>
				</table>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>