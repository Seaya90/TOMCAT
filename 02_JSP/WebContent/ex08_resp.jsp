<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 넘겨받은 데이타(파라미터 값) 추출
	int coffee = Integer.parseInt(request.getParameter("coffee"));
	int su = Integer.parseInt(request.getParameter("su"));
	int money = Integer.parseInt(request.getParameter("money"));
	
	//2. 선택메뉴에 따른 단가 설정(커피종류, 단가확인)
	String menu = ""; //커피종류
	int dan = 0; //단가
	int total = 0; //총금액(dan * su)
	int change = 0; //잔액(거스름돈)
	
	switch (coffee) {
		case 1 : menu = "아메리카노"; dan = 3000; break; 
		case 2 : menu = "카페모카"; dan = 3500; break; 
		case 3 : menu = "에스프레소"; dan = 2500; break; 
		case 4 : menu = "카페라떼"; dan = 4000; break; 
	}
	
	//3. 계산처리(총금액, 잔액등)
	total = dan * su;
	change = money - total;
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문 계산 처리</title>
</head>
<body>
	<%--
	커피종류 : 아메리카노
	단가 : 3000
	수량 : 2
	총금액 : 6000
	------------
	입금액 : 10000
	잔돈 : 4000
	--%>
	<h2>주문 계산 결과</h2>
	<ul>
		<li>커피종류 : 아메리카노</li>
		<li>단가 : 3000</li>
		<li>수량 : 2</li>
		<li>총금액 : 6000</li>
		<li>입금액 : 10000</li>
		<li>잔돈 : 4000</li>
	</ul>
	
	<hr>
	<ul>
		<li>커피종류 : <%=menu %></li>
		<li>단가 : <%=dan %></li>
		<li>수량 : <%=su %></li>
		<li>총금액 : <%=total %></li>
		<li>입금액 : <%=money %></li>
		<li>잔돈 : <%=change %></li>
	</ul>
</body>
</html>