package com.erp.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.erp.utils.MybatisUtils;
import com.erp.vo.Attendance;

public class AttendanceDao {

	private static AttendanceDao instance = new AttendanceDao();
	
	private AttendanceDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	
	public static AttendanceDao getInstance() {
		return instance;
	}
	
	private SqlSessionFactory sqlSessionFactory;

	public void updateAttendance(Attendance attendance) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.update("updateAttendance", attendance);
		session.close();
	}
}

