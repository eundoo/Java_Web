<%@page import="com.sample.dao.UserDao"%>
<%@page import="com.sample.vo.User"%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//registerform.jsp에서 register.jsp로 제출한 폼 입력값 조회한다.
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");

	////////////////입력값 누락체크
	//요청파라미터값으로 전달받은 사용자정보에 누락된 정보가 있으면 입력폼을 다시 요청하게 된다.
	if (id.isBlank() || password.isBlank() || name.isBlank() || email.isBlank() || phone.isBlank()) {
		response.sendRedirect("registerform.jsp?fail=blank");
		return; //다시, 더 이상 실행되면 안되니까 리턴문을 만나게해서 종료시킨다.
	}
	
	//SAMPLE_USERS 테이블에 대한 CRUD 기능이 구현된 UserDao객체를 획득한다.
	UserDao userDao = UserDao.getInstance();	
	
	/////////////////아이디 중복체크
	//요청파라미터값으로 전달받은 id가 이미 사용중인 아이디라면 입력폼을 다시 요청하게 한다.
	User savedUser = userDao.getUserById(id);
	if(savedUser != null) {
		response.sendRedirect("registerform.jsp?fail=id");
		return;
	}
	
	//비밀번호를 암호화하기
	String sha256Password = DigestUtils.sha256Hex(password);

	//User객체를 생성해서 사용자 정보를 저장한다.
	User user = new User();
	user.setId(id);
	user.setPassword(sha256Password);
	user.setName(name);
	user.setEmail(email);
	user.setPhone(phone);
	
	//사용자정보를 데이터베이스에 저장합니다.
	userDao.insertUser(user);
	
	//브라우저에게 재요청 URL을 응답으로 보낸다.
	response.sendRedirect("registerSuccess.jsp");
%>