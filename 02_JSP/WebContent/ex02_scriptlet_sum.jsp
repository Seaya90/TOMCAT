<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>합계구하기</title>
</head>
<body>
	<h2>1부터 10까지의 합계 구하기</h2>
	<p>출력형태 : 1+2+3+ ... +9+10=55</p>
	<hr>
	<%-- 스크립트릿, out 객체를 이용해서 p태그내에 출력 --%>
	<p>
	<%
	//1+2+3+ ... +9+10=55
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		out.print(i);
		sum = sum + i;
		if (i < 10) out.print("+");
	}
	out.print("=" + sum);
	System.out.println("1~10까지의 합: " + sum);
	%>
	</p>
</body>
</html>