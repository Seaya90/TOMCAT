<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 넘겨받은 파라미터 값을 자바빈에 저장해서 사용 --%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%-- 빈객체 vo(PersonVO 타입) 생성하고 파라미터값 저장 
	화면 출력(값 출력시 표현식 사용)
--%>
<jsp:useBean id="vo" class="com.bc.vo.PersonVO"/>
<%-- 
<jsp:setProperty property="name" name="vo"/>
<jsp:setProperty property="age" name="vo"/>
--%>
<jsp:setProperty property="*" name="vo"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바빈 사용 form 데이타 표시</title>
</head>
<body>
	<h2>결과보기(Bean 사용)</h2>
	<div>
		<h3>표현식 사용 출력</h3>
		<ul>
			<li>이름 : <%=vo.getName() %></li>
			<li>나이 : <%=vo.getAge() %></li>
			<li>성별 : <%=vo.getGender() %></li>
			<li>취미 : <%=vo.getHobby() %></li>
			<li>취미(반복문) :
			<%
				for (String h : vo.getHobby()) { %>
					<%=h %>&nbsp;&nbsp;
			<%	}%>
			</li>
			<li>거주지 : <%=vo.getAddr() %></li>
			<li>애완동물 : <%=vo.getAni() %></li>
			<li>애완동물(반복문) :
			<%
				for (String a : vo.getAni()) {
					out.print(a + "&nbsp;&nbsp ");
				}
			%> 
			</li>
		</ul>
		<hr>
		
		<h3>EL 사용 출력</h3>
		<ul>
			<%-- EL 문장의 $를 일반 문자처럼 취급하려는 경우 \ 사용 --%>
			<li>이름(\${vo.getName() }) : ${vo.getName() }</li>
			<li>이름(\${vo.name }) : ${vo.name }</li>
			<li>나이 : ${vo.getAge() }</li>
			<li>성별 : ${vo.gender }</li>
			<li>취미 배열(\${vo.hobby }) : ${vo.hobby }</li>
			<li>취미 배열값 출력 :
				${vo.hobby[0] } 
				${vo.hobby[1] } 
				${vo.hobby[2] } 
				${vo.hobby[3] } 
			</li>
		</ul>
		
	</div>

</body>
</html>