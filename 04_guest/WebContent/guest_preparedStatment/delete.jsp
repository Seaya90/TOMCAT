<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 idx(사번) 데이타 삭제 --%>
<%
	final String DRIVER = "oracle.jdbc.OracleDriver";
	final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	final String USER = "mystudy";
	final String PASSWORD = "mystudypw";
	Connection conn = null;
	Statement stmt = null;
	
	//전달받은 파라미터값 추출
	int sabun = Integer.parseInt(request.getParameter("idx"));

	
	//삭제처리
	String sql = "";
	sql += "DELETE FROM GUEST WHERE SABUN = " + sabun;
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
		//삭제성공
		if (cnt > 0) {
			response.sendRedirect("list.jsp");
		}
	} catch (Exception e) {
		//삭제실패
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
<title>삭제 실패</title>
</head>
<body>
	<h1>삭제 실패</h1>
	<p>삭제작업 처리에 예외가 발생했습니다.<br>
	상세페이지를 클릭해서 다시 작업하거나 목록페이지로 이동하세요</p>
	<a href="detail.jsp?idx=<%=sabun %>">상세페이지 이동</a>
	<a href="list.jsp">목록페이지 이동</a>
</body>
</html>