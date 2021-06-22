package com.erp.web;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/main")
public class MainServlet extends HttpServlet{

	//클라이언트 요청이 올때마다 실행할 작업을 담당하는 메소드이다.
	//클라이언트 요청을 철하고, 적절한 응답을 제공하는 메소드이다.
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/webapp/views/businessForm.jsp").forward(req, resp);
	}
	//init() 서블릿 객체의 초기화
	//destroy() 서블릿 객체가 폐기되기 전에 실행
}
