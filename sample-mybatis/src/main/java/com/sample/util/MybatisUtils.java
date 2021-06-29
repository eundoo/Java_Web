package com.sample.util;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * mybatis의 핵심 객체인 SqlSessionFactory를 제공하는 클래스다.
 * @author user
 *
 */
public class MybatisUtils {

	/*
	 * SqlSessionFactory
	 * 		- 데이터베이스에 대한 INSERT, UPDATE, DELETE, SELECT 작업을 제공하는 SqlSession객체를 생성한다.
	 * 		- 웹 애플리케이션이 실행하는 동안 오직 하나만 필요한 객체다.
	 */
	private static SqlSessionFactory sqlSessionFactory;
	
	/*
	 * 정적 초기화 블록
	 * 		- 클래스(설계도)가 메모리에 로딩될 때 수행할 작업을 정의하는 코드블록이다.
	 * 		- 정적 초기화 블록에 구현된 내용은 생성자 메소드보다 먼저 실행되며,
	 *        클래스의 일생동안 오직 한 번만 실행된다.
	 *      - 주로, SqlSessionFactory처럼 환경설정 파일을 로딩해서 한번만 만들어두면 되는 객체를 
	 *        생성할 때 주로 사용된다.
	 */
	static {
		try {
			String resource = "mybatis/mybatis-config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);			
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * MybatisUtils 클래스 로딩시 미리 생성해 둔 SqlSessionFactory 객체를 반환한다.
	 * @return SqlSessionFactory
	 */
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
