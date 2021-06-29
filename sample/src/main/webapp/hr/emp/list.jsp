<%@page import="com.sample.hr.vo.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.hr.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>인사관리 :: 사원관리</title>
</head>
<body>
<%
	//전체 사원리스트 조회해서 tbody에 표시하기
	/*
		1. com.sample.hr.vo 패키지에 Employee.java클래스를 정의한다.
		2. com.sample.hr.dao 패키지에 EmployeeDao.java 클래스에 정의한다.
		3. com.sample.hr.dao 패키지의 EmployeeDao.java 클래스에
	 	public List<Employee> getEmployees() throws SQLException {
	
	 		} 메소드를 구현한다.
	 	4.  emp/list.jsp에서 com.sample.hr.dao.EmployeeDao 객체를 생성한다.
	 	4.1 emp/list.jsp에서 com.sample.hr.dao.EmployeeDao 의 getAllEmployees() 메소드를 실행해서
	 		전체사원리스트를 조회한다.
	 	5. 조회된 사원리스트 정보를 <table> 태그의 tbody안에 표시한다.
	*/
%>

<%
	//Employees 테이블에 대한 CRUD 기능을 제공하는 EmployeeDao객체 생성하기
	EmployeeDao employeeDao = new EmployeeDao();
	//모든 사원정보 목록을 반환하는 메소드를 실행해서 사원정보 목록을 획득하기
	List<Employee> employees = employeeDao.getEmployees();
%>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>전체 사원 목록 페이지</h1>
	
				<h3>전체 사원 목록</h3>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<table class="table table-striped table-sm">
					<thead>
						<tr>
							<th>아이디</th>
							<th>이름</th>
							<th>이메일</th>
							<th>전화번호</th>					
						</tr>
					</thead>
					<tbody>
					<%
						for(Employee emp : employees) {
					%>
						<tr>
							<td><%=emp.getId()%></td>
							<td><a href="detail.jsp?id=<%=emp.getId()%>"><%=emp.getFirstName()%><%=emp.getLastName()%></a></td>
							<td><%=emp.getEmail()%></td>
							<td><%=emp.getPhoneNumber()%></td>
						</tr>
					<%		
						}
					%>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<p><a href="../emp/main.jsp">사원관리 메인페이지로 이동</a></p>
</body>
</html>