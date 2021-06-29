<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 함수</title>
<script type="text/javascript">
	function plus(a, b) {
		var sum = 0;
		for (var i=0; i<arguments.length; i++) }{
			sum += arguments[i]
		}
		return sum
	}
		
	/*
	중복정의가 지원되지 않음
	위에 정의된 plus함수를 지금 정의한 plus함수가 덮어쓰기한다. 더 이상 위에 정의된 plus()를 실행할 수 없다.
	function plus() {
		return '안녕하세요'
	}
	*/
	
	//함수 호출하기
	//함수는 매개변수의 갯수와 상관없이
	var x1 = plus()
	var x2 = plus(1)
	var x3 = plus(1,2)
	var x4 = plus(1,2,3)
	var x5 = plus(1,2,3,4)
	var x6 = plus(1,2,3,4,5)
</script>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	<p>실행결과는 브라우저 콘솔에서 확인</p>
</body>
</html>