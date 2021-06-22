package com.erp.web.business;

import java.io.IOException;

import com.erp.dao.BusinessDao;
import com.erp.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bss/status")
public class BssStatusServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String bssNo= req.getParameter("no");
		BusinessDao bDao = BusinessDao.getInstance();
		Business bss = bDao.getBusinessByNo(bssNo);
		
		String status = req.getParameter("status");
		if("delete".equals(status)) {
			bss.setStatus("삭제");
			
		}else if("completed".equals(status)) {
			bss.setStatus("완료");
		}
		
		bDao.updateBusiness(bss);
		res.sendRedirect("/erp/bss/list");
	}

}
