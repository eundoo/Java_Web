<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청객체를 사용해서 클라이언트의 정보 조회하기</title>
</head>
<body>
	<h1>요청객체가 제공하는 메소드를 이용해서 클라이언트 정보 조회하기</h1>

	<h3>클라이언트 정보</h3>
	<%
		//요청 객체가 제공하는 메소드로 클라이언트 정보 조회하기
		
		//클라이언트의 ip주소 획득하기
		String ipAddress = request.getRemoteAddr();
		
		//클라이언트의 요청방식(GET, POST, PUT, DELETE 등) 조회하기
		String method = request.getMethod();
		
		//요청 URI 조회하기
		//URL(Uniform Resource Locator) : 자원의 위치
		//URI(Uniform Resource Identifier) : 자원의 대한 식별자
		String uri = request.getRequestURI();

		//서버의 호스트명
		String serverName = request.getServerName();
		
		//서버가 사용중인 포트번호
		int port = request.getServerPort();
		
		//컨텍스트 경로
		// - 웹애플리케이션 프로젝트를 구분할 때 사용되는 경로
		// - 지정하지 않으면 프로젝트명이 컨텍스트패스가 된다.
		String contextPath = request.getContextPath();		
	%>
	<dl>
		<dt>클라이언트의 ip주소</dt><dd><%=ipAddress %></dd>
		<dt>요청방식</dt><dd><%=method %></dd>
		<dt>요청URL</dt><dd><%=uri %></dd>
		<dt>서버의 호스트명</dt><dd><%=serverName %></dd>
		<dt>서버가 사용하는 포트번호</dt><dd><%=port %></dd>
		<dt>서버의 컨텍스트 경로</dt><dd><%=contextPath %></dd>
	</dl>
	
	<p><a href="../req/main.jsp">메인페이지로 돌아가기</a></p>


</body>
</html>