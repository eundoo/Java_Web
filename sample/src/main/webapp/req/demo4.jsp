<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POST 방식으로 요청 파라미터값 보내기</title>
</head>
<body>
	<h1>POST 방식으로 요청 파라미터값 보내기</h1>
	<!-- 
		POST 방식으로 요청 파라미터 값 보내기
			- form태그의 method 속성값을 POST로 설정한다.
		GET 방식으로 요청 파라미터 값 보내기
			- a 태그의 href속성값으로 url을 작성할 때 url의 끝에 ?추가하고,
			  name=value%name=value&name=value형식으로 요청파라미터값을 추가한다.
			- form태그의 method 속성을 생략한다.
			- form태그의 method 속성값을 GET으로 설정한다.
	 -->
	 <h3>회원가입 정보를 demo4-1.jsp로 제출하기</h3>
	 <form method="post" action="demo4-1.jsp">
	 	이름<br />
	 	<input type="text" name="username"/> <br />
	 	아이디<br />
	 	<input type="text" name="userid"><br />
	 	비밀번호<br />
	 	<input type="password" name="userpassword"><br />
	 	성별<br />
	 	<input type="radio" name="gender" value="여성" checked> 여성
	 	<input type="radio" name="gender" value="남성"> 남성 <br />
	 	보유기술<br />
	 	<input type="checkbox" name="skill value="java" />자바
	 	<input type="checkbox" name="skill value="db" />데이터베이스
	 	<input type="checkbox" name="skill value="net" />네트워크
	 	<input type="checkbox" name="skill value="big" />빅데이터
	 	<input type="checkbox" name="skill value="data" />데이터과학<br />
	 	근무경력<br />
	 	<select name="year">
	 		<option value="">-- 선택하세요 --</option>
	 		<option value="1">1년 이상</option>
	 		<option value="3">3년 이상</option>
	 		<option value="5">5년 이상</option>
	 		<option value="7">7년 이상</option>
	 	</select><br />
	 	<button type="submit">제출</button>
	 </form>
	 <p><a href="../req/main.jsp">메인페이지로 되돌아가기</a></p>
</body>
</html>