package com.erp.web.attendance;

import java.io.IOException;
import java.util.Date;

import org.apache.commons.lang3.math.NumberUtils;

import com.erp.dao.AttendanceDao;
import com.erp.utils.CommonUtils;
import com.erp.vo.Attendance;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/myprofile/myprofile")
public class AttendanceServlet extends HttpServlet{
	
	Attendance attendance = new Attendance();
	AttendanceDao attendanceDao = AttendanceDao.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//HttpSession session = req.getSession(); 이거는 뭐지??
		
		
		
		/*int attNo = NumberUtils.toInt(req.getParameter("attNo"));
		Date workDay = CommonUtils.stringToDate(req.getParameter("workDay"));
		Date workIn = CommonUtils.stringToDate(req.getParameter("workIn"));
		Date workTempOff = CommonUtils.stringToDate(req.getParameter("workTempOff"));
		Date workBack = CommonUtils.stringToDate(req.getParameter("workBack"));
		Date workOff = CommonUtils.stringToDate(req.getParameter("workOff"));
		Date workHours = CommonUtils.stringToDate(req.getParameter("workHours"));
		int empNo = NumberUtils.toInt(req.getParameter("empNo"));
		
		attendance.setAttNo(attNo);
		attendance.setWorkDay(workDay);
		attendance.setWorkIn(workIn);
		attendance.setWorkTempOff(workTempOff);
		attendance.setWorkBack(workBack);
		attendance.setWorkOff(workOff);
		attendance.setWorkHours(workHours);
		attendance.setEmpNo(empNo);
	
		attendanceDao.updateAttendance(attendance);
		*/
		req.getRequestDispatcher("/WEB-INF/views/myprofile/myprofileMain.jsp").forward(req, res);
	}
}
