package com.sample.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sample.util.MybatisUtils;
import com.sample.vo.Employee;

public class EmployeeDao {

	private SqlSessionFactory sqlSessionFactory;
	
	private static EmployeeDao instance = new EmployeeDao();
	private EmployeeDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	public static EmployeeDao getInstance() {
		return instance;
	}
	
	public List<Employee> getEmployeesByDepartmentId(int departmentId) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Employee> employees = session.selectList("employees.getEmployeesByDepartmentId", departmentId);
		session.close();
		return employees;
	}
	
}
