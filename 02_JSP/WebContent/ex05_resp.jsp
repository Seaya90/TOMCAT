<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//1.전달받은 파라미터 값 추출
	//이름, 국어, 영어, 수학
	String name = request.getParameter("name");
	String sKor = request.getParameter("kor"); 
	System.out.println("name: " + name + ", kor: " + sKor);
	int kor = Integer.parseInt(sKor);
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	//2.계산 처리
	int tot = kor + eng + math;
	double avg = tot * 100 / 3 / 100.0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적처리결과</title>
</head>
<body>
	<h2>학생성적 처리결과</h2>
	<h2>p태그로 출력</h2>
	<p>이름 : <%=name %></p>
	<p>국어 : <%=kor %></p>
	<p>영어 : <%=eng %></p>
	<p>수학 : <%=math %></p>
	<p>-------------</p>
	<p>총점 : <%=tot %></p>
	<p>평균 : <%=avg %></p>
	
	<hr>
	<h2>테이블 형태 출력</h2>
	<table border="1">
		<thead>
			<tr>
				<th>항목</th><th>데이타</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>이름</td><td><%=name %></td>
			</tr>
			<tr>
				<td>국어</td><td><%=kor %></td>
			</tr>
			<tr>
				<td>영어</td><td><%=eng %></td>
			</tr>
			<tr>
				<td>수학</td><td><%=math %></td>
			</tr>
			<tr>
				<td>총점</td><td><%=tot %></td>
			</tr>
			<tr>
				<td>평균</td><td><%=avg %></td>
			</tr>
		</tbody>
	</table>
	
</body>
</html>