<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>부서검색</title>
<script>
	function fullname_serach(frm) {
		//frm.action = "fullnameList.jsp";
		frm.action = "fullnameList";
		frm.submit();
	}
</script>
</head>
<body>
	<h2>성명(성,이름) 검색(fullname.jsp)</h2>
	<form method="post">
		성명 : <input type="text" name="fullname">
		<input type="button" value="성명으로 검색"
				onclick="fullname_serach(this.form)">
	</form>
</body>
</html>