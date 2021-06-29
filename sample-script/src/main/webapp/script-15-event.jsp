<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 이벤트</title>
<style type="text/css">
	div {
		border: 1px solid black;
		padding: 30px;
		margin : 70px;
	}
</style>
<script type="text/javascript">
	//onclick이벤트 발생시 실행되는 이벤트 핸들러 함수
	function handler1() {
		console.log('onclick 이벤트 발생')
	}
	//onmouseenter이벤트 발생시 실행되는 이벤트 핸들러 함수
	function handler2() {
		console.log('onmouseenter 이벤트 발생')
	}
	//onmouseleave이벤트 발생시 실행되는 이벤트 핸들러
	function handler3() {
		console.log('onmouseleave 이벤트 발생')
	}
	//onmouseover이벤트 발생시 실행되는 이벤트 핸들러
	function handler4() {
		console.log('onmouseover 이벤트 발생')
	}
	//onmouseout이벤트 발생시 실행되는 이벤트 핸들러
	function handler5() {
		console.log('onmouseout 이벤트 발생')
	}
	
	//onmousemove이벤트 발생시 실행되는 이벤트 핸들러 함수
	function handler6(e) {
		var x = e.pageX
		var y = e.pageY
		console.log(x, y, "onmousemove 이벤트 발생")
	}
	//over는 그 엘리먼트 위에 있냐 안있냐 / enter는 밖에 나가냐 안나가냐
</script>
</head>
<body>
	<h1>마우스 이벤트</h1>
	<div onclick="handler1()">div1</div>
	<div onmouseenter="handler2()" onmouseleave="handler3()"
		onmouseover="handler4()" onmouseout="handler5()">
		div2
		<div>div3</div>
	</div>
	<div onmousemove="handler6(event)">div4</div>
</body>
</html>