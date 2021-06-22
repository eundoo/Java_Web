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
import jakarta.servlet.http.HttpSession;

@WebServlet("/bss/approvalList")
public class BssAppListServlet extends HttpServlet{

	BusinessDao businessDao = BusinessDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		// 로그인 여부 확인
		// 매니저 인지 확인
		
		BusinessDao bDao = BusinessDao.getInstance();
	
		
		List<Business> bss = bDao.getAllListByStatus("신청");
		
		req.setAttribute("bss", bss);
		
		// 여기 아래링크로 들어가는게 이제 내부객체
		req.getRequestDispatcher("/WEB-INF/views/bss/bssApprovalList.jsp").forward(req, res);
	}
}
