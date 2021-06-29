<%@page import="com.sample.hr.dao.EmployeeDao"%>
<%@page import="com.sample.hr.vo.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 새 사원정보 등록하기
	/*
		1. form.jsp가 add.jsp로 제출하는 모든 요청파라미터값을 요청객체에서 가져온다.
			요청파라미터명 - firstName, lastName, email, phoneNumber, jobId, departmentId,
			salary, commissionPct, managerId 입니다.
			* commissionPct는 form.jsp에서 commission_pct로 설정했는데, commissionPct로 변경해주세요
		2. Employee객체를 생성해서 1번에서 조회한 모든 신규 사원정보를 저장한다.
		3. com.sample.hr.dao.EmployeeDao에 신규 사원정보를 저장하는 
			public void insertEmployee(Employee employee) throws SQLException {
	
			}를 정의한다.
			* 사원아이디와 입사일는 각각 employees_seq 시퀀스와 sysdate로 값이 추가되도록 SQL을 작성한다.
		4. emp/add.jsp에서 EmployeeeDao객체를 생성한다.
		5. EmployeeDao객체의 insertEmployee(employee객체)를 실행해서 새 사원정보를 데이터베이스에 추가한다.
		6. 응답객체의 sendRedirect(재요청할 URL)을 실행해서 list.jsp를 재요청하게 하는 응답을 브라우저에게 보낸다.
	*/
%>

<% 
	//form.jsp에서 제출한 폼 입력값을 획득하기
	int managerId = Integer.parseInt(request.getParameter("managerId"));
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String phoneNumber = request.getParameter("phoneNumber");
	String jobId = request.getParameter("jobId");
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	double salary = Double.parseDouble(request.getParameter("salary"));
	double commissionPct = Double.parseDouble(request.getParameter("commissionPct"));
	
	//Employee객체를 생성해서 신규 사원정보를 저장
	Employee employee = new Employee();
	employee.setManagerId(managerId);
	employee.setFirstName(firstName);
	employee.setLastName(lastName);
	employee.setEmail(email);
	employee.setPhoneNumber(phoneNumber);
	employee.setJobId(jobId);
	employee.setDepartmentId(departmentId);
	employee.setSalary(salary);
	employee.setCommissionPct(commissionPct);
	
	//EMPLOYEES테이블에 대한 CURD 작업을 지원하는 EmployeeDao객체 생성하기
	EmployeeDao empDao = new EmployeeDao();
	//신규 사원정보를 전달받아서 데이터베이스에 저장하는 insetEmployee(사원정보)를 실행한다.
	empDao.insertEmployee(employee);
	
	//INSERT, UPDATE, DELETE 작업을 수행한 후에는 클라이언트에게 재요청할 URL을 응답으로 보낸다.
	//HttpServletResponse(응답객체)의 sendRedirect(url)을 실행하는 재요청 URL을 응답으로 보낼 수 있다.
	response.sendRedirect("list.jsp");
%>

<td><a href="detail.jsp?id=100">홍길동</a></td>
