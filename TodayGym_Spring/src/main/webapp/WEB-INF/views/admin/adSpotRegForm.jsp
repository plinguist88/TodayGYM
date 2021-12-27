<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spot Register</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSpotRegForm_style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="module"
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule
	src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</head>
</head>
<body>
	<div class="content-admin">
		<div class="content">
			<!-- Admin Spot Register Form Start  -->
			<form action="adSpotRegAction.ad" name="spotFormDto" method="post">
				<table>
					<thead>
						<tr>
							<th colspan="3"><h1>Spot Register</h1></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="regTitle">번호</td>
							<td class="regContent"><input type="text" name="s_code"
								id="s_code" value="자동" placeholder="지점번호" readonly /></td>
							<td class="regImage" rowspan="5">이미지 등록 공간</td>
						</tr>
						<tr>
							<td class="regTitle">지점명</td>
							<td class="regContent"><input type="text" name="s_name"
								id="s_name" placeholder="예)인천연수점, 인천송도점..." /></td>
						</tr>
						<tr>
							<td class="regTitle">연락처</td>
							<td class="regContent"><input type="text" name="s_phone"
								id="s_phone" placeholder="주의) 'ㅡ' 제외" /></td>
						</tr>
						<tr>
							<td class="regTitle">주소</td>
							<td class="regContent apiKakaoAddress">
								<input type="button" onclick="apiKakaoAddress()" value="주소 검색"><br>
								<input type="text" name="s_addr1" id="s_addr1" placeholder="도로명주소"> 
								<input type="text" name="s_addr2" id="s_addr2" placeholder="상세주소"> 
							</td>
						</tr>
						<tr>
							<td class="regTitle">기타</td>
							<td class="regContent"><input type="text" name="s_content"
								id="s_content" placeholder="" /></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td class="regSubmit" colspan="3"><input type="submit" value="등록" /> <input
								type="button" value="취소" onclick="location.href='adSpotMove.ad';"/></td>
						</tr>
					</tfoot>
				</table>
			</form>
			<!-- Admin Spot Register Form End  -->
		</div>
	</div>
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script src="resources/JavaScript/apiKakaoAddress.js"></script>
</body>
</html>