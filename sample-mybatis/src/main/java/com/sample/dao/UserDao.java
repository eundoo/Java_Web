package com.sample.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sample.util.MybatisUtils;
import com.sample.vo.User;

public class UserDao {

	private static UserDao instance = new UserDao();
	private UserDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	
	/**
	 * SAMPLE_USERS 테이블에 대한 CRUD 기능을 제공하는 UserDao객체를 반환한다.
	 * @return
	 */
	public static UserDao getInstance() {
		return instance;
	}
	
	private SqlSessionFactory sqlSessionFactory;
	
	/**
	 * 새 사용자를 전달받아서 SAMPLE_USERS 테이블에 추가한다.
	 * @param user 새 사용자 정보
	 */
	public void insertUser(User user) {
		SqlSession session = sqlSessionFactory.openSession(true);
		session.insert("insertUser", user);
		session.close();
	}
	
	/**
	 * 아이디를 전달받아 SAMPLE_USERS 테이블에서 아이디에 해당하는 고객 정보를 찾아서 반환한다.
	 * @param userId 조회할 사용자 아이디
	 * @return 사용자 정보, 아이디에 해당하는 사용자가 존재하지 않을 경우 null값이 반환된다.
	 */
	public User getUserById(String userId) {
		SqlSession session = sqlSessionFactory.openSession(true);
		User user = session.selectOne("getUserById", userId);
		session.close();
		return user;
	}
}
