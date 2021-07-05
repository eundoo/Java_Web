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
	<style type="text/css">
		div {border: 1px solid black; padding: 15px; margin: 15px;}
	</style>
</head>
<body>
<div class="container">
	<h1>새로 추가된 엘리먼트에 대한 이벤트 처리하기</h1>
	
	<div id="box-1">
		<button id="btn-add-button">추가</button>
	</div>
	
	<div id="box-2">
		<button>버튼</button>
	</div>
</div>
</body>
<script type="text/javascript">
$(function() {
	$('#btn-add-button').click(function() {
		$('#box-2').append('<button class="ml-2">버튼</button>')
	})
	
	//아이디가 box-2인 엘리먼트 안에 현재 존재하거나 미래에 새로 추가되는 button에서
	//onclick이벤트가 발생할 때 실행할 이벤트 핸들러 함수를 jQuery를 사용해서 등록함
	// *** #box-2를 클릭했을 때 실행될 이벤트 핸들러 함수르르 등록한느 것이 아님
	// *** #box-2는 아래 코드 실행시 반드시 존재하고 있어야 함.
	//이벤트 대상이 box-2가 아니고 button이다!!!!
	$('#box-2').on('click','button',function() {
		alert('버튼이 클릭됨')
	})
})
</script>
</html>