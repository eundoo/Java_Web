<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 연습</title>

</head>
<body>
	<h1>이벤트 연습</h1>

	<div id="text-box">
		<div id="text-box-1">첫번째 글 박스입니다.</div>
		<div id="text-box-2">두번째 글 박스입니다.</div>
		<div id="text-box-3">세번재 글 박스입니다.</div>
	</div>
	<div id="btn-box">
	<!-- 
		사용자가 버튼을 클릭했을 때 사용자와 상호작용하기 위해서 onclick 이벤트를 사용함
		해당 엘리먼트에 onclick 이벤트가 발생하면 실행될 이벤트 핸들러 함수를 바인딩시킨다.
	 -->
		<button onclick="firstEventHandler()">버튼1</button>
		<button onclick="secondEventHandler()">버튼2</button>
		<button onclick="thirdEventHandler()">버튼3</button>
	</div>
	<script type="text/javascript">
		//이벤트 발생시 실행되는 이벤트 핸들러 함수 구현하기
		function firstEventHandler() {
			//아이디가 'text-box-1' 엘리먼트의 텍스트 컨텐츠를 조회해서 콘솔창 혹은 경고창에 표시하기
			//1. HTML Document객체에서 아이디가 'text-box-1'인 엘리먼트를 찾기
			var el = document.getElementById("text-box-1")
			//console.log(el)
			//2. 엘리먼트의 텍스트 컨텐츠 조회하기
			var text = el.textContent
			alert(text)
		}
		function secondEventHandler() {
			//아이디가 'text-box-1' 엘리먼트의 텍스트 컨텐츠를 다른 내용으로 변경하기
			//1. HTML Document객체에서 아이디가 'text-box-2'인 엘리먼트를 찾기
			var el = document.querySelector('#text-box-2')
			//2. 엘리먼트의 텍스트 컨텐츠 변경하기
			el.textContent = '텍스트 컨텐츠의 내용이 변경되었습니다.'
		}
		function thirdEventHandler() {
			//아이디가 'text=box-3' 엘리먼트를 삭제하기
			//1. HTML Document객체에서 아이디가 'text-box-3'인 엘리먼트를 찾기
			var el = document.querySelector('#text-box-3')
			//2. 엘리먼트 삭제하기
			el.remove()
		}
	</script>
</body>
</html>