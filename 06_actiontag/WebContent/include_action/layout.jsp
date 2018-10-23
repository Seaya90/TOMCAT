<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지(상단,좌측,하단)</title>
</head>
<body>
	<table border="1" width="600">
		<tr>
			<td colspan="2">
				<jsp:include page="./module/top.jsp"></jsp:include>
		</tr>
		<tr>
			<td>
				<jsp:include page="./module/left.jsp"></jsp:include>
			</td>
			<td>
				<!-- 본문내용 -->
				이부분이 본문 내용이 들어갈 위치
				<br><br><br><br><br><br><br>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<jsp:include page="./module/bottom.jsp"/>
			</td>
		</tr>
	</table>
</body>
</html>













