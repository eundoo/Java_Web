<%@page import="com.sample.hr.vo.Department"%>
<%@page import="com.sample.hr.vo.Job"%>
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
<!-- 
	신규 사원정보를 등록하는 폼
	1. 사원아이디, 입사일, 매니저 아이디는 입력폼에서 별로도 입력하지 않는다.
		신규사원은 전부 Human resources 부서의  203번 직원이 관리한다.
		매니저 아이디는 히든 필드로  표시했다.
	2. 입력한 모든 값들은 add.jsp로 제출된다.
	
	* 추가 사항
	직종정보와 부서정보를 데이터베이스에서 조회해서 추가하기
	
 -->
 <!-- 먼저 name을 파악해야됨! value에서 선택한 값이 name으로 들어감 -->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<h1>사원 등록폼</h1>
			</div>
		</div>
		<div class="row">
			<div class="col-12 border p-3 bg-light">
				<form method="post" action="add.jsp">
					<!-- 203번은 인사과 직원이다. -->
					<input type="hidden" name="managerId" value="203"/>
					
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label>First Name</label>
      						<input type="text" class="form-control" name="firstName">
    					</div>
    					<div class="form-group col-md-6">
      						<label>Last Name</label>
      						<input type="text" class="form-control" name="lastName">
    					</div>
  					</div>
  					
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label>Email</label>
      						<input type="text" class="form-control" name="email">
    					</div>
    					<div class="form-group col-md-6">
      						<label>Phone Number</label>
      						<input type="text" class="form-control" name="phoneNumber">
    					</div>
  					</div>
  					
					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label>Job</label>
      						<select class="form-control" name="jobId">
	      						<option value=""> 직종을 선택하세요</option>
	      						<%
	      							EmployeeDao employeeDao = new EmployeeDao();
	      							List<Job> jobs = employeeDao.getAllJobs();
	      						%>
	      						<%
	      							for(Job job : jobs) {
	      						%>
	      							<option value="<%=job.getJobId()%>"> <%=job.getJobTitle() %> </option>
	      						<%
	      							}
	      						%>   							
      						</select>
    					</div>
    					
    					<div class="form-group col-md-6">
      						<label>Department</label>
      						<select class="form-control" name="departmentId">
      							<option value=""> 소속부서를 선택하세요</option>
      							<%
      								List<Department> departments = employeeDao.getAllDepartment();
      							%>
      							
      							<%
      								for(Department dept : departments) {
      							%>		
      								<option value="<%=dept.getId()%>"><%=dept.getName() %></option>
      							<%
      								}
      							%> 							
      						</select>
    					</div>
  					</div>
  					<div class="form-row">
    					<div class="form-group col-md-6">
      						<label>Salary</label>
      						<select class="form-control" name="salary">
      							<option value="2000"> 2000</option>
      							<option value="3000"> 3000</option>
      							<option value="4000"> 4000</option>
      							<option value="5000"> 5000</option>
      							<option value="6000"> 6000</option>
      							<option value="7000"> 7000</option>
      						</select>
    					</div>
    					<div class="form-group col-md-6">
      						<label>Commission_pct</label>
      						<select class="form-control" name="commissionPct">
      							<option value="0.1"> 0.1</option>
      							<option value="0.15"> 0.15</option>
      							<option value="0.2"> 0.2</option>
      							<option value="0.25"> 0.25</option>
      							<option value="0.3"> 0.3</option>
      							<option value="0.35"> 0.35</option>
      							<option value="0.4"> 0.4</option>
      						</select>
    					</div>
  					</div>
  					<div class="form-group col-12 text-right">
  						<a href="main.jsp" class="btn btn-secondary">취소</a>
  						<button type="submit" class="btn btn-primary">등록</button>
  					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>