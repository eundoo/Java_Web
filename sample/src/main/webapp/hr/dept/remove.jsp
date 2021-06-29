<%@page import="com.sample.hr.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//getParameter는 항상 문자로 반환하기 때문에 숫자로 변경필요
	//요청객체에서 요청 파라미터로 전달된 deptId값을 조회한다.
	int departmentId = Integer.parseInt(request.getParameter("deptId"));

	//DEPARTMENTS 테이블에 대한 CURD기능을 제공하는 DepartmentDao 객체 생성
	DepartmentDao deptDao = new DepartmentDao();
	//DepartmentDao의 deleteDepartment(부서아이디)를 실행해서 해당 부서정보 삭제
	deptDao.deleteDepartment(departmentId);
	
	//브라우저에게 재요청 URL을 응답으로 보낸다.
	
	response.sendRedirect("list.jsp");

%>