<%@page import="com.sample.hr.vo.Department"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.hr.dao.DepartmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인사관리 :: 부서관리</title>
</head>
<body>
	<h1>부서 목록 페이지</h1>
	
	<h3>전체 부서 목록</h3>
	<%
		DepartmentDao departmentDao = new DepartmentDao();
		List<Department> departments = departmentDao.getAllDepartments(); 
	%>
	<ul>
	<%
		for(Department dept : departments) {
	%>
			<li><a href="detail.jsp?deptId=<%=dept.getId()%>"><%=dept.getName() %></a></li>
	<%
		}
	%>	
	</ul>
	
	<p><a href="../dept/main.jsp">부서관리 메인페이지 이동</a></p>
</body>
</html>