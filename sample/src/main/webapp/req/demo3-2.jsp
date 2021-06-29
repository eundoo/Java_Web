<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 값 조회하기</title>
</head>
<body>
	<h1>요청 파라미터 값 조회하기</h1>
	<%
		//category라는 이름으로 서버로 전송된 요청 파라미터 값 조회하기
		String cat = request.getParameter("category");
		//no라는 이름으로 서버로 전송된 요청 파라미터 값 조회하기
		String goodsNo = request.getParameter("no");
	%>
	<dl>
		<dt>카테고리</dt><dd><%=cat %></dd>
		<dt>번호</dt><dd><%=goodsNo %></dd>
	</dl>
</body>
</html>