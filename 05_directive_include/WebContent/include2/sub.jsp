<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서브페이지</title>
</head>
<body>
	<h1>서브페이지</h1>
	<a href="main.jsp">메인 페이지로 이동</a>
	<p>서브페이지 내용</p>
	<p>........</p>
	
	<%@ include file="01_declaration.jsp" %>
	<%@ include file="02_scriptlet.jsp" %>
	
	<%--디렉티브(directive) include문은 copy & paste 적용됨 --%>
	<%@ include file="footer.jsp"%>

</body>
</html>