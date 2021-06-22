package com.erp.web.business;

import java.io.IOException;
import java.util.Date;

import org.apache.commons.lang3.math.NumberUtils;

import com.erp.dao.BusinessDao;
import com.erp.utils.CommonUtils;
import com.erp.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bss/modify")
public class BssModifiedServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String no = req.getParameter("no");
		
		BusinessDao bDao = BusinessDao.getInstance();
		Business business = bDao.getBusinessByNo(no);
		
		req.setAttribute("business", business);
		
		req.getRequestDispatcher("/WEB-INF/views/bss/bssModifiedForm.jsp").forward(req, res);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		String no = req.getParameter("bssNo");
		String title = req.getParameter("bssTitle");
		String memo = req.getParameter("bssMemo");
		Date startDate = CommonUtils.stringToDate(req.getParameter("bssStartDate"));
		Date endDate = CommonUtils.stringToDate(req.getParameter("bssEndDate"));
		String status = req.getParameter("status");
		String fileName = req.getParameter("bssFileName");
		String empNo = req.getParameter("empNo");
		String managerNo = req.getParameter("managerNo");
		System.out.println(no);
		System.out.println(title);
		System.out.println(memo);
		
		Business business = new Business();
		business.setNo(no);
		business.setTitle(title);
		business.setMemo(memo);
		business.setStartDate(startDate);
		business.setEndDate(endDate);
		business.setFileName(fileName);
		business.setStatus(status);
		business.setEmpNo(empNo);
		business.setManagerNo(managerNo);
		
		BusinessDao businessDao = BusinessDao.getInstance();
		businessDao.updateBusiness(business);
		req.setAttribute("business", business);
		
		
		res.sendRedirect("/erp/bss/list");
		
		
		
		
		/*
		
		String no = req.getParameter("bssNo");
		String title = req.getParameter("bssTitle");
		String memo = req.getParameter("bssMemo");
		Date startDate = CommonUtils.stringToDate(req.getParameter("bssStartDate"));
		Date endDate = CommonUtils.stringToDate(req.getParameter("bssEndDate"));
		String fileName = req.getParameter("bssFileName");
		String status = req.getParameter("status");
		String empNo = req.getParameter("empNo");
		String managerNo = req.getParameter("managerNo");
		
		Business business = new Business();
		business.setNo(no);
		business.setTitle(title);
		business.setMemo(memo);
		business.setStartDate(startDate);
		business.setEndDate(endDate);
		business.setFileName(fileName);
		business.setEmpNo(empNo);
		business.setManagerNo(managerNo);
		
		BusinessDao businessDao = BusinessDao.getInstance();
		
		businessDao.updateBusiness(business);
		req.setAttribute("business", business);
		
		
		res.sendRedirect("/semi-project/bss/list");*/
	}
}
