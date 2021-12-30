<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="resources/css/cart_style.css">
	<script type="text/javascript">
		//전체선택
		$(document).ready(function() {
			$("#chkall").click(function() {
				if($("#chkall").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkall").prop("checked", false);
				else $("#chkall").prop("checked", true); 
			});
		});
		//전체선택(삭제)
		$(document).ready(function() {
			$("#chkall2").click(function() {
				if($("#chkall2").is(":checked")) $("input[name=chk]").prop("checked", true);
				else $("input[name=chk]").prop("checked", false);
			});
			
			$("input[name=chk]").click(function() {
				var total = $("input[name=chk]").length;
				var checked = $("input[name=chk]:checked").length;
				
				if(total != checked) $("#chkall2").prop("checked", false);
				else $("#chkall2").prop("checked", true); 
			});
		});
		
	</script>
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
				<table class="table_title">
					<thead class="cart_head">
						<tr>
							<th class="thead_th1"> <input class="checkbox" type="checkbox" checked id="chkall"> </th>
							<th class="thead_th2" colspan="3"> 상품정보 </th>
							<th class="thead_th3"> 옵션 </th>
							<th class="thead_th4"> 상품금액 </th>
							<th class="thead_th5"> 비고 </th>
						</tr>
					</thead>
					<tbody class="cart_body">
						<c:forEach var="mycart" items="${mycart}">
						<tr>
							<td class="tbody_td11"> <input class="checkbox" type="checkbox" checked name="chk"> </td>
							<td class="tbody_td11">DB사진</td>
							<td class="tbody_td11">${mycart.p_subcate}</td>
							<td class="tbody_td1"> <button class="buttonx" type="button"><img src="resources/img/cart/x.png"></button></td>
							<td class="tbody_td1">${mycart.o_month}</td>
							<td class="tbody_td1">${mycart.o_price}원</td>
							<td class="tbody_td11"> </td>
							
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>	
				<div class="cart_delete">
					<div class="checkboxarea">
						<input class="checkbox" type="checkbox" checked id="chkall2">
					</div>
					<div class="deletebuttonarea">
						<input class="deletebutton" type="button" value="선택상품 삭제">
					</div>
				</div>
				<div class="cart_calculator">
					<div class="cart_cal_sub">
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt>총 상품금액</dt>
								<dd>					
									<span>0</span>									
									<span>원</span>
								</dd>
							</dl>
						</div>
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt></dt>
								<dd>
									<span></span>
									<img src="resources/img/cart/minus.png">
								</dd>
							</dl>
						</div>
						<div class="cart_price">
							<dl class="cart_price_sub">
								<dt>할인예상금액</dt>
								<dd>
									<span class="sale">0</span>
									<span>원</span>
								</dd>
							</dl>
						</div>	
					</div>
					<div class="cart_cal_sub2">
						<span>총 주문금액</span>
						<span class="total">0</span>
						<span class="total">원</span>
					</div>
				</div>
			<div class="cart_button">
				<span class="cart_back" onclick="location.href='./buyHome'">계속하기</span>
				<span class="ordermove" onclick="location.href='./myOrder?m_id=${mb.m_id}'">결제하기</span>
			</div>
		</section>
		<footer>
			<jsp:include page="../layout/footer.jsp" />
		</footer>
	</div>
</body>
</html>