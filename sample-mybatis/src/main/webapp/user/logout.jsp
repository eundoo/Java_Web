<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그아웃 시키기
	// 첫번째 방법 - HttpSession객체를 폐기시키기
	//session.invalidate();

	// 두번째 방법 -  HttpSession객체에 "LOGINED_USER_INFO"이름으로 저장된 사용자 정보를 삭제하기
	session.removeAttribute("LOGINED_USER_INFO");
	
	//브라우저에게 재요청 URL을 응답으로 보내기
	response.sendRedirect("/sample-mybatis/index.jsp");
	
%>