<%@page import="com.sample.hr.dao.DepartmentDao"%>
<%@page import="com.sample.hr.vo.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 파라미터값 조회
	String departmentName = request.getParameter("name");
	int locationId = Integer.parseInt(request.getParameter("locationId"));
	//Department객체를 생성해서 신규 부서정보 저장
	Department department = new Department();
	department.setName(departmentName);
	department.setLocationId(locationId);
	
	//DepartmentDao의 insertDepartment(Department dept)를 실행해서 새 부서정보 추가
	DepartmentDao departmentDao = new DepartmentDao();
	departmentDao.insertDepartment(department);
	//브라우저가 다시 요청할 URL을 응답으로 보낸다. (Redirection 응답)
	response.sendRedirect("list.jsp");
%>