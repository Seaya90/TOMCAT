<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 전달받은 form 데이타를 표현식으로 표시 --%>
<%
	//한글처리를 위한 encoding 처리(UTF-8)
	request.setCharacterEncoding("utf-8");
	
	//전달받은 파라미터 값 추출
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String gender = request.getParameter("gender");
	String[] hobby = request.getParameterValues("hobby"); //checkbox
	String addr = request.getParameter("addr");//select 하나만 선택
	String[] ani = request.getParameterValues("ani"); //select 다중선택
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현식으로 form 데이타 표시</title>
</head>
<body>

	<h2>결과보기(표현식)</h2>
	<div>
		<ul>
			<li>이름 : <%=name %></li>
			<li>나이 : <%=age %></li>
			<li>성별 : <%=gender %></li>
			<li>취미 : <%=hobby %></li>
			<li>취미(반복문) :
			<%
				for (String h : hobby) { %>
					<%=h %>&nbsp;&nbsp;
			<%	}%>
			</li>
			<li>거주지 : <%=addr %></li>
			<li>애완동물 : <%=ani %></li>
			<li>애완동물(반복문) :
			<%
				for (String a : ani) {
					out.print(a + "&nbsp;&nbsp ");
				}
			%> 
			</li>
		</ul>
	</div>

</body>
</html>





