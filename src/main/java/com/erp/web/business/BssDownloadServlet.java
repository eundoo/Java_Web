package com.erp.web.business;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import org.apache.commons.io.IOUtils;

import com.erp.dao.BusinessDao;
import com.erp.vo.Business;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/bss/download")
public class BssDownloadServlet extends HttpServlet {

	private static final String saveDirectory = "C:\\workspace\\eunhye\\erp\\upload";

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

		String businessNo = req.getParameter("no");

		BusinessDao bDao = BusinessDao.getInstance();
		Business business = bDao.getBusinessByNo(businessNo);
		String fileName = business.getFileName();

		res.setContentType("application/octet-stream"); // 바이너리 데이터에 대한 컨텐츠 타입
		// 다운로드 되는 파일이름 응답메세지의 헤더에 설정
		String shortFileName = business.getShortFileName();
		shortFileName = URLEncoder.encode(shortFileName, "utf-8");
		res.setHeader("Content-Disposition", "attachment; fileName=" + shortFileName);
		// 파일 읽어서 브라우저와 연결된 출력스트림으로 내려보냄
		InputStream in = new FileInputStream(new File(saveDirectory, fileName));
		OutputStream out = res.getOutputStream();
		IOUtils.copy(in, out);
		IOUtils.close();

	}
}
