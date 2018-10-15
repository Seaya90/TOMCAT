package com.mystudy.pm;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/sungjuk")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		//(실습)전달받은 이름, 국어, 영어, 수학 점수를 받아서 성적처리
		
		//1. 한글처리를 위한 문자셋 설정
		
		//2. 파라미터 값 추출
		
		//3. 총점, 평균 값 구하기
		
		//4. response 객체 이용 응답처리(HTML 태그 작성)
		//------------------
		//응답 형식
		/*
		성적처리 결과
		이름: 홍길동 -> <p>이름: name</p>
		국어: 100
		영어: 90
		수학: 80
		----------
		총점: 270
		평균: 90.0  
		*/
		
		//-------------------------------
		//테이블 형식으로도 출력
	}

}
