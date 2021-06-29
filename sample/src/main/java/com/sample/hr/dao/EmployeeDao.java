package com.sample.hr.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sample.hr.dto.EmployeeDto;
import com.sample.hr.vo.Department;
import com.sample.hr.vo.Employee;
import com.sample.hr.vo.Job;
import com.sample.utils.ConnectionUtil;

/**
 * EMPLOYEES 테이블에 대한 CRUD를 제공하는 클래스다.
 * @author USER
 */

public class EmployeeDao {
	
	/**
	    * 모든 사원정보 목록을 반환한다.
	    * @return 사원정보 목록
	    * @throws SQLException
	    */
	   public List<Employee> getAllEmployees() throws SQLException {
	      List<Employee> employees = new ArrayList<Employee>();
	      String sql = "select * "
	               + "from employees "
	               + "order by employee_id ";
	      
	      Connection con = ConnectionUtil.getConnection();
	      PreparedStatement pstmt = con.prepareStatement(sql);
	      ResultSet rs = pstmt.executeQuery();
	      
	      while (rs.next()) {
	         Employee emp = new Employee();
	         emp.setId(rs.getInt("employee_id"));
	         emp.setFirstName(rs.getString("first_name"));
	         emp.setLastName(rs.getString("last_name"));
	         emp.setEmail(rs.getString("email"));
	         emp.setPhoneNumber(rs.getString("phone_number"));
	         emp.setHireDate(rs.getDate("hire_date"));
	         emp.setJobId(rs.getString("job_id"));
	         emp.setSalary(rs.getDouble("salary"));
	         emp.setCommissionPct(rs.getDouble("commission_pct"));
	         emp.setManagerId(rs.getInt("manager_id"));
	         emp.setDepartmentId(rs.getInt("department_id"));
	         
	         employees.add(emp);
	      }
	      
	      rs.close();
	      pstmt.close();
	      con.close();
	      
	      return employees;
	      
	   }
	/**
	 * 새 사원정보를 전달받아서 데이터베이스에서 저장한다.
	 * @param employee 새 사원정보
	 * @throws SQLException
	 */
	   //저 seq.nextval이게 자동으로 순서 부여하는건가?
	public void insertEmployee(Employee employee) throws SQLException {
		String sql = "insert into employees "
				   + "(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id) "
				   + "values "
				   + "(employees_seq.nextval, ?, ?, ?, ?, sysdate, "
				   + "?, ?, ?, ?, ?) ";
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, employee.getFirstName());
		pstmt.setString(2, employee.getLastName());
		pstmt.setString(3, employee.getEmail());
		pstmt.setString(4, employee.getPhoneNumber());
		pstmt.setString(5, employee.getJobId());
		pstmt.setDouble(6, employee.getSalary());
		pstmt.setDouble(7, employee.getCommissionPct());
		pstmt.setInt(8, employee.getManagerId());
		pstmt.setInt(9,  employee.getDepartmentId());
		pstmt.executeUpdate();
		
		con.close();
		pstmt.close();

	
	}
	
	/**
	 * 모든 사원정보를 반환한다.
	 * @return 사원정보 목록
	 * @throws SQLException
	 */
	
	public List<Employee> getEmployees() throws SQLException {
		List<Employee> employees = new ArrayList<Employee>();
		String sql = "select employee_id, first_name, last_name, email, "
				   + "phone_number, hire_date, job_id, salary, commission_pct, "
				   + "manager_id, department_id "
				   + "from employees "
				   + "order by employee_id asc ";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			Employee employee = new Employee();
			employee.setId(rs.getInt("employee_id"));
			employee.setFirstName(rs.getString("first_name"));
			employee.setLastName(rs.getString("last_name"));
			employee.setEmail(rs.getString("email"));
			employee.setPhoneNumber(rs.getString("phone_number"));
			employee.setHireDate(rs.getDate("hire_date"));
			employee.setJobId(rs.getString("job_id"));
			employee.setSalary(rs.getInt("salary"));
			employee.setCommissionPct(rs.getInt("commission_pct"));
			employee.setManagerId(rs.getInt("manager_id"));
			employee.setDepartmentId(rs.getInt("department_id"));
			
			employees.add(employee);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return employees;
	
	}
	
	/**
	 * 부서아이디를 전달받아서 해당 부서에 소속된 사원들을 반환한다.
	 * @param deptId 부서아이디
	 * @return 사원조회목록
	 * @throws SQLException
	 */

	public List<Employee> getEmployeesByDepartmentId(int deptId) throws SQLException {
		List<Employee> employees = new ArrayList<Employee>();
		
		String sql = "select * "
				   + "from employees "
				   + "where department_id = ? ";
		
		Connection con = ConnectionUtil.getConnection();		//DBMS와 연결을 담당하는 Connection 객체 획득
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, deptId);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			Employee emp = new Employee();
			emp.setId(rs.getInt("employee_id")); //조회된게 null이면 0으로 변환한다. 그래서 null로 넣고싶으면 Employee에 가서 private integer id; 로 바꾸면됨
			emp.setFirstName(rs.getString("first_name"));
			emp.setLastName(rs.getString("last_name"));
			emp.setEmail(rs.getString("email"));
			emp.setPhoneNumber(rs.getString("phone_number"));
			emp.setHireDate(rs.getDate("hire_date"));
			emp.setJobId(rs.getString("job_id"));
			emp.setSalary(rs.getDouble("salary"));
			emp.setCommissionPct(rs.getDouble("commission_pct"));
			emp.setManagerId(rs.getInt("manager_id"));
			emp.setDepartmentId(rs.getInt("department_id"));
			
			employees.add(emp);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		return employees;
		
	}
	
	/**
	 * 사원아이디에 해당하는 사원정보를 반환한다.
	 * @param employeeId 조회할 사원아이디
	 * @return 사원정보
	 * @throws SQLException
	 */
	
	public EmployeeDto getEmployeeDtoById(int employeeId) throws SQLException {
		
		EmployeeDto dto = null;
		
		String sql = "select E.employee_id, E.first_name, E.last_name, E.phone_number, E.email, E.job_id, "
				   + "E.hire_date, E.salary, E.commission_pct, E.department_id, D.department_name, D.manager_id, "
				   + "(select M.first_name from employees M where M.employee_id = D.manager_id) manager_name " 
				   + "from employees E, departments D "
				   + "where E.department_id = D.department_id "
				   + "and E.employee_id = ? ";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, employeeId);
		ResultSet rs = pstmt.executeQuery();
		
		if(rs.next()) {
			dto = new EmployeeDto();
			dto.setId(rs.getInt("employee_id"));
			dto.setFirstName(rs.getString("first_name"));
			dto.setLastName(rs.getString("last_name"));
			dto.setPhoneNumber(rs.getString("phone_number"));
			dto.setEmail(rs.getString("email"));
			dto.setJobId(rs.getString("job_id"));
			dto.setHireDate(rs.getDate("hire_date"));
			dto.setSalary(rs.getDouble("salary"));
			dto.setCommission(rs.getDouble("commission_pct"));
			dto.setDepartmentId(rs.getInt("department_id"));
			dto.setManagerId(rs.getInt("manager_id"));
			
			dto.setDepartmentName(rs.getString("department_name"));
			dto.setManagerName(rs.getString("manager_name"));

		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		return dto;
		
	}
	
	/**
	 * 전달받은 사원아이디 사원에게 보고하는 직원정보 목록을 반환한다.
	 * @param employeeId 사원아이디
	 * @return	사원정보 목록
	 * @throws SQLException
	 */
	
	public List<Employee> getEmployeesByManagerId(int employeeId) throws SQLException {
		List<Employee> employees = new ArrayList<Employee>();
		/*String sql = "select employee_id, first_name, email, phone_number "
				   + "from employees "
				   + "where manager_id = (select employee_id "
				   + "       				from employees "
				   + "       				where employee_id = ? ) ";
		*/
		String sql = "select * "
				   + "from employees "
				   + "where manager_id = ? ";

		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, employeeId);
		ResultSet rs = pstmt.executeQuery();
		
		while(rs.next()) {
			Employee employee = new Employee();
			employee.setId(rs.getInt("employee_id")); //조회된게 null이면 0으로 변환한다. 그래서 null로 넣고싶으면 Employee에 가서 private integer id; 로 바꾸면됨
			employee.setFirstName(rs.getString("first_name"));
			employee.setLastName(rs.getString("last_name"));
			employee.setEmail(rs.getString("email"));
			employee.setPhoneNumber(rs.getString("phone_number"));
			employee.setHireDate(rs.getDate("hire_date"));
			employee.setJobId(rs.getString("job_id"));
			employee.setSalary(rs.getDouble("salary"));
			employee.setCommissionPct(rs.getDouble("commission_pct"));
			employee.setManagerId(rs.getInt("manager_id"));
			employee.setDepartmentId(rs.getInt("department_id"));
			
			employees.add(employee);
		}
		
		rs.close();
		pstmt.close();
		con.close();
		
		return employees;
	}
	
	public List<Job> getAllJobs() throws SQLException {
		List<Job> jobs = new ArrayList<Job>();
		
		String sql = "select job_id, job_title, min_salary, max_salary "
				   + "from jobs ";
	
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		while (rs.next()) {
			Job job = new Job();
			job.setJobId(rs.getString("job_id"));
			job.setJobTitle(rs.getString("job_title"));
			job.setMinSalary(rs.getInt("min_salary"));
			job.setMaxSalary(rs.getInt("max_salary"));
			
			jobs.add(job);
		}
		rs.close();
		pstmt.close();
		con.close();
		
		return jobs;
	}
	
	public List<Department> getAllDepartment() throws SQLException {
		List<Department> departments = new ArrayList<Department>();
		
		String sql = "select department_id, department_name "
				   + "from departments ";
		
		Connection con = ConnectionUtil.getConnection();
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();

		while (rs.next()) {
			Department department = new Department();
			department.setId(rs.getInt("department_id"));
			department.setName(rs.getString("department_name"));
			
			
			departments.add(department);
		}
		rs.close();
		pstmt.close();
		con.close();
	
		return departments;
		
	}
	
}
