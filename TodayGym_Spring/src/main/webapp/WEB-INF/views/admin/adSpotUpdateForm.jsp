<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spot Update</title>
<link type="text/css" rel="stylesheet"
	href="resources/css/adSpotUpdateForm_style.css">
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
			<form action="adSpotUpdateAction.ad" name="spotFormDto" method="post">
				<table>
					<thead>
						<tr>
							<th colspan="3"><h1>Spot Update</h1></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="updateTitle">지점 번호</td>
							<td class="updateContent"><input type="text" name="s_code"
								id="s_code" class="updateInput" size="4" value="${sDto.s_code }"
								readonly /></td>
						</tr>
						<tr>
							<td class="updateTitle">지점 이름</td>
							<td class="updateContent"><input type="text" name="s_name"
								id="s_name" class="updateInput" size="30"
								value="${sDto.s_name }" placeholder="${sDto.s_name }" required /></td>
						</tr>
						<tr>
							<td class="updateTitle">연락처</td>
							<td class="updateContent"><div><span class="oriData">저장된 연락처 : ${sDto.s_phone }</span></div>
								<input type="text" name="s_phone1" id="s_phone1"
								class="updateInput" size="3" required /> - <input type="text"
								name="s_phone2" id="s_phone2" class="updateInput" size="3"
								required /> - <input type="text" name="s_phone3" id="s_phone3"
								class="updateInput" size="3" required /></td>
						</tr>
						<tr>
							<td class="updateTitle">주소</td>
							<td class="updateContent"><div><span class="oriData">저장된 주소 : ${sDto.s_addr }</span></div>
								<input type="button" class="btnKakaoApi"
								onclick="apiKakaoAddress()" value="주소 검색"><br> <input
								type="text" name="s_addr1" id="s_addr1" class="updateInput"
								size="30" placeholder="도로명주소" required> <input
								type="text" name="s_addr2" id="s_addr2" class="updateInput"
								size="30" placeholder="상세주소"></td>
						</tr>
						<tr>
							<td class="updateTitle">기타</td>
							<td class="updateContent"><input type="text"
								name="s_content" id="s_content" class="updateInput" size="30"
								value="${sDto.s_content }" placeholder="${sDto.s_content }" /></td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td class="updateSubmit" colspan="3"><input type="submit"
								value="수정" /> <input type="button" value="취소"
								onclick="location.href='adSpotMove.ad';" /></td>
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
	<script type="text/javascript">
		function showFileList() {
			var s_images = document.getElementById('s_images');
			var files = s_images.files;
			var file = '';
			var fileNameList = '';

			for (var i = 0; i < files.length; i++) {
				file = files[i]
				fileNameList += '<li>' + file.name + '</li>';
			}
			document.getElementById('fileList').innerHTML = fileNameList;
		}
	</script>
</body>
</html>