<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>JSP연습1</h1>

	<%
		List<String> names = new ArrayList<String>();
		names.add("제이호");
		names.add("탄");
		names.add("준호");
		names.add("서강준");
		names.add("박서준");
		names.add("송강");
		names.add("강동원");
	%>
	
	<h3>사원 리스트</h3>
	<ul>
	<%
		for (String name : names) {
	%>
			<li><%=name %></li>
	<%
		}
	%>
	</ul>
</body>
</html>