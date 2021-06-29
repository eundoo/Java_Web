<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>요청 파라미터 값 조회하기</title>
</head>
<body>
	<h1>GET 방식으로 전달받은 요청파라미터값(폼 입력값) 조회하기</h1>
	<%
		//요청 파라미터 값 조회
		String searchOption = request.getParameter("opt");
		String searchkeyword = request.getParameter("keyword");
		String orderTerm = request.getParameter("order");
		String rowCount = request.getParameter("rows");
	%>	
	<dl>
		<dt>검색 옵션</dt><dd><%=searchOption %></dd>
		<dt>검색 키워드</dt><dd><%=searchkeyword %></dd>
		<dt>정렬기준</dt><dd><%=orderTerm %></dd>
		<dt>목록갯수</dt><dd><%=rowCount %></dd>
	</dl>
</body>
</html>