<%@page import="com.sample.hr.dao.DepartmentDao"%>
<%@page import="com.sample.hr.vo.Department"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//요청 파라미터값 조회하기 <-- 수정폼에서 입력하거나 선택한 값
	int deptId = Integer.parseInt(request.getParameter("deptId"));
	String deptName = request.getParameter("deptName");
	int managerId = Integer.parseInt(request.getParameter("managerId"));
	int locationId = Integer.parseInt(request.getParameter("locationId"));
	
	//변경된 부서정보를 Department객체에 담는다.
	Department department = new Department();
	department.setId(deptId);
	department.setName(deptName);
	department.setManagerId(managerId);
	department.setLocationId(locationId);
	
	System.out.println("수정할 부서 아이디: " + deptId);
	System.out.println("수정할 부서 이름: " + deptName);
	System.out.println("수정할 부서의 관리자 아이디: " + managerId);
	System.out.println("수정할 부서의 소재지 아이디: " + locationId);
	
	//DEPARTMENTS 테이블에 대한 CRUD 작업을 지원하는 DepartmentDao 객체 생성하기
	DepartmentDao deptDao = new DepartmentDao();
	deptDao.updateDepartment(department);
	
	//브라우저에게 재요청할 URL을 응답으로 보낸다.
	response.sendRedirect("list.jsp");
	
%>