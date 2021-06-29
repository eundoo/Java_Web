<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GET 방식으로 요청 파라미터 전송하기</title>
</head>
<body>
	<h1>GET 방식으로 요청 파라미터 보내기</h1>
	<p>
		클라이언트가 서버로 보내는 요청파라미터 값을 요청 URL 글에 ? 다음에 추가하는 것이다.
		요청 URL의 끝에 ?를 추가하고 그 뒤에 파라미터값을 추가할 수 있는데 이것을 Query String이라고 한다.
	
	</p>
	<h3>demo3-1.jsp에 요청파라미터값을 전달해 보기</h3>
	<ul>
		<li><a href="demo3-1.jsp?id=ho">제이호</a></li>
		<li><a href="demo3-1.jsp?id=tan">탄</a></li>
		<li><a href="demo3-1.jsp?id=oh">오나나</a></li>
		<li><a href="demo3-1.jsp?id=kim">김나나</a></li>
	</ul>
	
	<h3>demo3-2.jsp에 여러 개의 요청 파라미터 값을 전달해 보기</h3>
	<ul>
		<li><a href="demo3-2.jsp?category=book&no=1000">이것이 자바다</a></li>
		<li><a href="demo3-2.jsp?category=book&no=1011">혼자공부하는 자바</a></li>
		<li><a href="demo3-2.jsp?category=book&no=1024">자바의 정석</a></li>
		<li><a href="demo3-2.jsp?category=gift&no=2004">열쇠고리</a></li>
		<li><a href="demo3-2.jsp?category=gift&no=2101">핸드폰 케이스</a></li>
		<li><a href="demo3-2.jsp?category=movie&no=4300">스타워즈</a></li>
	</ul>
	
	<h3>demo3-3.jsp에 여러개의 요청 파라미터값을 전달하기</h3>
	<!-- form태그의 action 속성값은 폼 입력값이 제출되는 곳을 설정한다. -->
	<form action="demo3-3.jsp">
		검색옵션<br />
		<select name="opt">
			<option value="title">제목</option>
			<option value="writer">저자</option>
			<option value="company">출판사</option>
			<option value="price">가격</option>
		</select><br />
		검색어<br />
		<input type="text" name="keyword" /><br />
		정렬순서<br />
		<input type="radio" name="order" value="date" />날짜
		<input type="radio" name="order" value="price" />가격
		<input type="radio" name="order" value="score" />평점
		<input type="radio" name="order" value="review" />리뷰 <br />
		목록갯수<br />
		<select name="rows">
			<option value="10">10개씩</option>
			<option value="20">20개씩</option>
			<option value="50">50개씩</option>
		</select><br />
		<button type="submit">검색</button>
	</form>
	
	<p><a href="main.jsp">메인페이지로 돌아가기</a></p>
</body>
</html>