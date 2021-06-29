package com.sample.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.google.gson.Gson;
import com.sample.dao.EmployeeDao;
import com.sample.vo.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/employees")
public class EmployeesServlet extends HttpServlet {

	EmployeeDao employeeDao = EmployeeDao.getInstance();
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		//XMLHttpRequest가 서버로 보낸 부서아이디 조회
		int departmentId = Integer.parseInt(req.getParameter("id"));
		//부서아이디에 해당하는 부서에 소속된 사원목록 조회
		List<Employee> employees = employeeDao.getEmployeesByDepartmentId(departmentId);
		
		//employees를 그냥 내려보낼 수가 없어서 가장 이상적인 json으로 변환
		
		//획득된 사원목록정보를 JSON 형식의 텍스트로 변환한다.
		Gson gson = new Gson();
		String jsonText = gson.toJson(employees); //순수 text로 변환됨
		/*
		 * [{"id":100, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":101, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":102, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":103, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":104, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":105, "firstName":"Steven","lastName":"king", "salary":24000},
		 * [{"id":106, "firstName":"Steven","lastName":"king", "salary":24000},]
		 */
		
		//JSON형식의 텍스트로 변환된 사원목록정보를 응답으로 보낸다.
		res.setContentType("application/json; charset=utf-8");
		PrintWriter writer = res.getWriter();
		writer.println(jsonText);
	}
}
