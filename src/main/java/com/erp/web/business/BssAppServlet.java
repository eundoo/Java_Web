package com.erp.web.business;

import java.io.IOException;

import com.erp.dao.BusinessDao;
import com.erp.utils.CommonUtils;
import com.erp.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bss/app")
public class BssAppServlet extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String no = req.getParameter("no");
		String name = req.getParameter("name");
		BusinessDao bDao = BusinessDao.getInstance();
		Business bss = bDao.getBusinessByNo(no);
		
		if(name.equals("approval")) {
			bss.setStatus("승인");
			bDao.updateBusiness(bss);
			
		} else if(name.equals("reject")){
			bss.setStatus("반려");
			bDao.updateBusiness(bss);
		}
		
		res.sendRedirect("/erp/bss/approvalList");
		
	}

}
