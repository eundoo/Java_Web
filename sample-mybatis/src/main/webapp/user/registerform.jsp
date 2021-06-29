<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Bootstrap 4 Example</title>
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
	String navItem = "register";

	String failMessage = request.getParameter("fail");
%>
	<header>
		<%@ include file="../common/header.jsp" %>
	</header>
	<main>
		<div class="row mb-3"> 
			<div class="col-12">
				<h3 class="border p-3 bg-light">회원가입 폼</h3>
			</div>
		</div>
		<div class="row">
		<%
			if("blank".equals(failMessage)) { //failMessage가 null일 수 있으니 null.equals는 안되니까 먼저 쓸 수 없다 -> nullpointer exception.. 이거무슨말?
		%>
			
			<div class="col-12">
				<p>에러메세지 : <%=failMessage %></p>
				<div class="alert alert-danger">
					<strong>입력 값 누락</strong> 누락된 입력값이 존재합니다.
				</div>
			</div>
		<%
			}
		%>
		<%
			if("id".equals(failMessage)) { 
		%>

			<div class="col-12">	
				<p>에러메세지 : <%=failMessage %></p>
				<div class="alert alert-danger">
					<strong>아이디 중복</strong> 이미 사용중인 아이디 입니다.
				</div>
			</div>
		<%
			}
		%>
			<div class="col-12">
				<form method="post" action="register.jsp" class="border p-3 bg-light">
					<div class="form-group">
						<label>아이디</label>
						<input type="text" class="form-control" name="id" />
					</div>
					<div class="form-group">
						<label>비밀번호</label>
						<input type="password" class="form-control" name="password" />
					</div>
					<div class="form-group">
						<label>이름</label>
						<input type="text" class="form-control" name="name" />
					</div>
					<div class="form-group">
						<label>이메일</label>
						<input type="text" class="form-control" name="email" />
					</div>
					<div class="form-group">
						<label>전화번호</label>
						<input type="text" class="form-control" name="phone" />
					</div>
					<div class="text-right">
						<a href="../index.jsp" class="btn btn-secondary">취소</a>
						<button type="submit" class="btn btn-primary">회원가입</button>
					</div>
				</form>
			</div>
		</div>
	</main>
</div>
</body>
</html>