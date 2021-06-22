package com.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.erp.utils.MybatisUtils;
import com.erp.vo.Vacation;

public class VacationDao {

	public static VacationDao instance = new VacationDao();
	
	private VacationDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	
	private SqlSessionFactory sqlSessionFactory;
	
	public static VacationDao getInstance() {
		return instance;
	}
	
	
	public List<Vacation> getAllListByStatus(String status) {
		
	}
	
}
