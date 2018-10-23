<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="com.study.mybatis.DBService"%>
<%@page import="com.study.mybatis.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//MemberVO 타입의 객체에 파라미터값 설정
	/*
	MemberVO memberVO = new MemberVO();
	memberVO.setId(request.getParameter("id"));
	memberVO.setPwd(request.getParameter("pwd"));
	memberVO.setName(request.getParameter("name"));
	//...
	*/
%>
	<%-- MemberVO 타입의 객체에 파라미터값 설정(액션태그 사용) --%>
	<jsp:useBean id="memberVO" class="com.study.mybatis.MemberVO"/>
	
	<%-- 파라미터명과 일치하는 setter에 일괄 값 설정 --%>
	<jsp:setProperty property="*" name="memberVO"/>
<%	
	//SqlSession 객체 생성
	//.openSession(), .openSession(false) : 자동커밋 아님
	//.openSession(true) : 자동커밋(auto commit 상태)
	SqlSession ss = DBService.getFactory().openSession();
	
	//SqlSession 객체를 이용 insert SQL문(insertMember) 실행
	//유일한 id인 경우 namespace 생략 가능
	int result = ss.insert("insertMember", memberVO);
	ss.commit(); //DB에 최종 반영 처리
	ss.close();
	
	//페이지 이동(selectAll.jsp)
	if (result > 0) {
		response.sendRedirect("selectAll.jsp");
	} else { //입력건수가 없는 경우
%>
		<script>
			alert("입력건수 : 0건");
		</script>
<%		
		response.sendRedirect("selectAll.jsp");
	}
%>
