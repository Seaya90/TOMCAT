<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
	<h1>메인페이지</h1>
	<a href="sub.jsp">서브 페이지로 이동</a>
	<p>메인페이지 내용</p>
	<p>........</p>

	<%--디렉티브(directive) include문은 copy & paste 적용됨 --%>
	<%@ include file="footer.jsp"%>
	<footer>
	<hr>
	<h2>비트캠프</h2>
	<p>비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩｜ 사업자등록번호 : 214-85-24928
(주)비트컴퓨터 서초지점 대표이사 : 조현정 / 문의 : 02-3486-9600 / 팩스 : 02-6007-1245
통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 권도혁
Copyright (c) 비트캠프 All rights reserved.</p>
</footer>
<%-- 	
	<hr>
	<h2>비트캠프</h2>
	<p>비트캠프 서울시 서초구 서초동 1327-15 비트아카데미빌딩｜ 사업자등록번호 : 214-85-24928
(주)비트컴퓨터 서초지점 대표이사 : 조현정 / 문의 : 02-3486-1234 / 팩스 : 02-6007-1245
통신판매업 신고번호 : 제 서초-00098호 / 개인정보보호관리책임자 : 권도혁
Copyright (c) 비트캠프 All rights reserved.</p>
--%>
</body>
</html>