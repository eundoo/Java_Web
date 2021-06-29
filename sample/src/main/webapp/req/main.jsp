<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청객체 익히기</title>
</head>
<body>
	<h1>요청객체(HttServletRequest) 연습</h1>
	<h3>요청객체의 주요메소드 연습</h3>
	
	<ul>
		<li><a href="demo1.jsp">클라이언트의 정보 조회하기</a></li>
		<li><a href="demo2.jsp">요청헤더 정보 (클라이언트가 요청메세지에 담아서 보내는 부가적인 정보) 조회하기</a></li>
		
	</ul>
	
	<h3>요청객체의 요청파라미터값 조회하기</h3>	
	<p>
		요청 파라미터는 클라이언트의 요청을 처리하기 위해서 클라이언트가 서버로 보내지는 데이터이다.
		요청 파라미터를 서버로 보내는 방법은 2가지가 있다. <br />
		1. GET 방식으로 요청파라미터 보내기 <br />
		2. POST 방식으로 요청파라미터 보내기 <br />
	</p>
	<ul>
		<li><a href = "demo3.jsp">GET방식으로 요청 파라미터값 보내기</a></li>
		<li><a href = "demo4.jsp">POST방식으로 요청 파라미터값 보내기</a></li>
	
	</ul>
	
</body>
</html>