<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>상품몰</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
<%
	String navItem = "login";
	
	//로그인 실패 혹은 로그인되지 않은 사용자에 대한 서비스 거부시 요청되는 URL
	// user/loginform.jsp?fail=invalid
	// user/loginform.jsp?fail=inactive
	// user/loginform.jsp?fail=blank
	// user/loginform.jsp?fail=deny&job=주문
	// user/loginform.jsp?fail=deny&job=장바구니담기
	String failMessage = request.getParameter("fail");
	String job = request.getParameter("job");
%>
	<header>
		<%@ include file="../common/header.jsp" %>
	</header>
	<main>
		<div class="row mb-3"> 
			<div class="col-12">
				<h3 class="border p-3 bg-light">로그인 폼</h3>
			</div>
		</div>
		<div class="row">
		<%
			if("blank".equals(failMessage)) {
		%>
			<div class="col-6 offset-3">
				<div class="alert alert-danger">
					<strong>입력값 누락</strong> 아이디 혹은 비밀번호가 누락되었습니다.
				</div>
			</div>
		<%
			} else if("inactive".equals(failMessage)) {
		%>	
			<div class="col-6 offset-3">
				<div class="alert alert-danger">
					<strong>탈퇴한 사용자</strong> 이미 탈퇴처리된 사용자입니다.
				</div>
			</div>		
		<%
			} else if ("invalid".equals(failMessage)) {
		%>
		
			<div class="col-6 offset-3">
				<div class="alert alert-danger">
					<strong>로그인 실패</strong> 아이디 혹은 비밀번호가 일치하지 않습니다.
				</div>
			</div>
		<%
			} else if ("deny".equals(failMessage)) {
		%>
			<div class="col-6 offset-3">
				<div class="alert alert-danger">
					<strong>서비스 거부</strong> [<%=job %>]은 로그인 된 사용자만 이용가능한 서비스입니다.
				</div>
			</div>
		<%
			}
		%>
			<div class="col-6 offset-3">
				<form method="post" action="login.jsp" class="border p-3 bg-light">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" name="id" />
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" name="password" />
					</div>
					<div class="text-right">
						<a href="registerform.jsp" class="btn btn-outline-primary">회원가입</a>
						<button type="submit" class="btn btn-primary">로그인</button>
					</div>
				</form>
			</div>
		</div>
	</main>
</div>
</body>
</html>