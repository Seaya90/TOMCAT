<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>작업선택</title>
<script>
	function all_search(frm) {
		//frm.action = "list.jsp";
		frm.action = "list";
		frm.submit();
	}
	function dept_search(frm) {
		//frm.action = "dept.jsp"; //jsp 직접호출
		frm.action = "dept"; //dept를 요청
		frm.submit();
	}
	function fullname_search(frm) {
		//frm.action = "fullname.jsp"; //jsp 직접호출
		frm.action = "fullname"; //성명검색을 요청
		frm.submit();
	}
	
	//동적검색
	function search_go(frm) {
		//frm.action = "search.jsp";
		frm.action = "search";
		frm.submit();
	}
	
</script>
</head>
<body>
	<h1>작업선택(index.jsp)</h1>
	<form method="post">
		<input type="button" value="전체보기"
				onclick="all_search(this.form)">
		<input type="button" value="부서보기"
				onclick="dept_search(this.form)">
		<%--실습 --%>
		<input type="button" value="성명검색(성,이름 포함)"
				onclick="fullname_search(this.form)">
		
		<hr>
		<%--동적 검색 --%>		
		<input type="button" value="동적검색"
				onclick="search_go(this.form)">
				
	</form>
</body>
</html>






