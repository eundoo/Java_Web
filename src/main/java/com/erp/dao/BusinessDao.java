package com.erp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.erp.utils.MybatisUtils;
import com.erp.vo.Business;

public class BusinessDao {
	
	public static BusinessDao instance = new BusinessDao();
	
	private BusinessDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	private SqlSessionFactory sqlSessionFactory;
	
	public static BusinessDao getInstance() {
		return instance;
	}
	
	
	/*
	 * 새 출장정보를 입력받아서 (erp_business)에 저장한다.
	 */
	public void insertBusiness(Business business) {
		SqlSession Session = sqlSessionFactory.openSession(true);
		Session.insert("business.insertbusiness", business);
		Session.close();
	}
	
	/*
	 * 모든 business를 리스트로 출력한다. 
	 */
	public List<Business> getAllBusiness() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Business> business = session.selectList("business.getAllBusiness");
		session.close();
		return business;
	}
	
	public void updateBusiness(Business business) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("business.updateBusiness", business);
		session.close();
	}
	
	public List<Business> getAllListByStatus(String status) {
		SqlSession session = sqlSessionFactory.openSession();
		List<Business> business = session.selectList("business.getAllListByStatus", status);
		session.close();
		return business;

	}
	
	public Business getBusinessByNo(String no) {
		SqlSession session = sqlSessionFactory.openSession();
		Business bss = session.selectOne("getBusinessByNo", no);
		session.close();
		return bss;
	}

}
