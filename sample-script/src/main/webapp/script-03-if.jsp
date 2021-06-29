<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 if문</title>
<script type="text/javascript">
	//if문 
	//if ~ else 문
	//if ~ else if ~ else if 문
	var score = 70
	if(score >= 60) {
		alert('합격입니다.')
	} else {
		alert('불합격입니다.')
	}
	
	if(score > 90) {
		console.log("A학점")
	} else if (score > 80) {
		console.log("B학점")
	} else if (score >=70) {
		console.log("C학점")
	} else if (score >= 60) {
		console.log("D학점")
	} else {
		console.log("F학점")
	}
	
	var name = "";
	if(name) {
		console.log(name, "님 환영합니다.")
	} else {
		console.log("이름이 비어있습니다.")
	}
</script>
</head>
<body>
	<h1>자바스크립트의 if문</h1>
	<p>브라우저의 콘솔창에서 실행결과 확인</p>
</body>
</html>