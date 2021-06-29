package com.sample.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {

	private static final String DRIVER_CLASS_NAME = "oracle.jdbc.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER_NAME = "hr";
	private static final String USER_PASSWORD = "zxcv1234";
	
	static {
		try {
			Class.forName(DRIVER_CLASS_NAME);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
	/**
	 * 데이터 베이스와 연결된 Connection을 반환한다.
	 * @return 커넥션 객체
	 * @throws SQLException
	 */
	
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(URL, USER_NAME, USER_PASSWORD);
	}

}
