package com.erp.web.business;

import java.io.IOException;
import java.util.List;

import com.erp.dao.BusinessDao;
import com.erp.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bss/list") // 여기는 어디서 불리우게되는지 보통 로그인이나 헤더래
public class BssListServlet extends HttpServlet{

	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		BusinessDao businessDao = BusinessDao.getInstance();
		List<Business> allBusiness = businessDao.getAllBusiness();
		req.setAttribute("business", allBusiness);

		
		// 여기 아래링크로 들어가는게 이제 내부객체
		req.getRequestDispatcher("/WEB-INF/views/bss/businessList.jsp").forward(req, res);
	}
}
