<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 방식으로 전달받은 요청 파라미터값</title>
</head>
<body>
	<h1>POST 방식으로 전달된 요청파라미터 값 조회하기</h1>
	<h3>사용자 정보 입력폼에 입력해서 제출한 값 조회하기</h3>
	<%
		//한글이 깨지지 않도록 요청객체의 문자 인코딩 방식을 utf-8방식으로 설정한다.
		//버전이 다를 수도 있잖아 이거는 10인데 그 이전 톰캣을 쓸때는 이걸 꼭 써줘야됨
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("username");
		String id = request.getParameter("userid");
		String password = request.getParameter("userpassword");
		String gender = request.getParameter("gender");
		String[] skills = request.getParameterValues("skill");
		String workedYears = request.getParameter("year");
	%>
	<dl>
		<dt>이름</dt>
		<dd><%=name %></dd>
		<dt>아이디</dt>
		<dd><%=id %></dd>
		<dt>비밀번호</dt>
		<dd><%=password %></dd>
		<dt>성별</dt>
		<dd><%=gender %></dd>
		<dt>보유기술</dt>
		<dd>
		<%
			for(String item : skills) {
		%>
			<%=item %>
		<%
			}
		%>
		</dd>
		<dt>경력</dt>
		<dd><%=workedYears %></dd>
	</dl>
</body>
</html>