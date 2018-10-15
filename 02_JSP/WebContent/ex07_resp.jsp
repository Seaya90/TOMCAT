<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1.전달받은 값 추출(name, kor, eng, math)
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	//2.계산처리(총점, 평균)
	int tot = kor + eng + math;
	double avg = tot * 100 / 3 / 100.0;
	
	//3.평균에 따른 평가(A~F)
	//평가: 90이상-A, 80이상-B, 70이상-C, 60이상-D, 60미만-F
	String hakjum = "";
	if (avg >= 90) hakjum = "A";
	else if (avg >= 80) hakjum = "B";
	else if (avg >= 70) hakjum = "C";
	else if (avg >= 60) hakjum = "D";
	else hakjum = "F";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리 결과</title>
</head>
<body>
	<h1>성적처리 결과</h1>
	<%-- 평가 결과 출력
	이름 : 홍길동
	총점 : 271
	평균 : 90.33
	평가(A~F) : A
	--%>
	<ul>
		<li>이름 : <%=name %></li>
		<li>총점 : <%=tot %></li>
		<li>평균 : <%=avg %></li>
		<li>평가(A~F) : <%=hakjum %></li>
	</ul>
</body>
</html>