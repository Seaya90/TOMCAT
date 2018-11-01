package com.bc.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bc.model.dao.DAO;
import com.bc.model.vo.EmployeeVO;

@WebServlet("/fullnameList")
public class FullnameListController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//전달받은 파라미터(fullname) 값 추출
		String fullname = request.getParameter("fullname");
		
		//DB에서 파라미터값에 해당하는 직원 목록 검색
		List<EmployeeVO> list = DAO.getFullnameSearch(fullname);
		
		//검색된 데이타를 응답페이지에서 사용할 수 있도록 전달
		request.setAttribute("list", list);
		
		//응답페이지(fullnameList.jsp) 호출
		request.getRequestDispatcher("fullnameList.jsp")
				.forward(request, response);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	
	}
}
