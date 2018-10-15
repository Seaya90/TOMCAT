<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 사원정보 입력처리(전달받은 데이타 사용) 
	정상입력처리시 : list.jsp 이동 
	예외발생시 : 현재페이지(HTML) 보여주기
--%>
<%
	//(실습)전달받은 파라미터 값으로 입력처리
	//입력 성공하면 list.jsp 페이지로 이동
	//response.sendRedirect("list.jsp");
	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	Connection conn = null;
	Statement stmt = null;
	
	//전달받은 파라미터값 추출
	int sabun = Integer.parseInt(request.getParameter("sabun"));
	String name = request.getParameter("name");
	int pay = Integer.parseInt(request.getParameter("pay"));
	
	//입력처리
	String sql = "";
	sql += "INSERT INTO GUEST (SABUN, NAME, NALJA, PAY) ";
	sql += "VALUES ("+ sabun +", '"+ name +"', SYSDATE, "+ pay +") ";
	System.out.println("sql: " + sql);

	try {
		//1. 드라이버 로딩
		Class.forName(DRIVER);
		//2. DB연결(Connection)
		conn = DriverManager.getConnection(URL, USER, PASSWORD);
		//3. Statement 객체 생성
		stmt = conn.createStatement();
		//4. SQL문 실행
		int cnt = stmt.executeUpdate(sql);
		//입력성공
		if (cnt > 0) {
			response.sendRedirect("list.jsp");
		}
	} catch (Exception e) {
		//입력실패
		e.printStackTrace();
	} finally {
		try {
			if (stmt != null) stmt.close();
			if (conn != null) conn.close();
		} catch (Exception e) {}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력실패</title>
</head>
<body>
	<h1>입력 실패</h1>
	<p>입력작업 처리를 하지 못했습니다.<br>
	   입력페이지를 클릭해서 다시 작업하세요.</p>
	<a href="addForm.jsp">입력페이지 이동</a>
</body>
</html>








