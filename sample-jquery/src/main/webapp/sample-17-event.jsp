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
	<h1>onclick 이벤트</h1>
	<div>
		<button onclick="fn1()" class="btn btn-primary" id="btn-1">버튼1</button>
		<button class="btn btn-primary" id="btn-2">버튼2</button>
		<button class="btn btn-primary" id="btn-3">버튼3</button>
		<button class="btn btn-primary" id="btn-4">버튼4</button>
		<button class="btn btn-primary" id="btn-5">버튼5</button>
	</div>
	<div>
		<button class="btn btn-secondary" id="btn-off-1">버튼1</button>
		<button class="btn btn-secondary" id="btn-off-2">버튼2</button>
		<button class="btn btn-secondary" id="btn-off-3">버튼3</button>
		<button class="btn btn-secondary" id="btn-off-4">버튼4</button>
		<button class="btn btn-secondary" id="btn-off-5">버튼5</button>
	</div>
</div>
<script type="text/javascript">
	//1,2,3은 jQuery.off메소드로 이벤트 처리가 폐기되지 않음
	$('#btn-off-1').click(function() {
		console.log('이벤트 처리 폐기')
		$('#btn-1').off('click')
	})
	$('#btn-off-2').click(function() {
		console.log('이벤트 처리 폐기')
		$('#btn-2').off('click')
	})
	$('#btn-off-3').click(function() {
		console.log('이벤트 처리 폐기')
		$('#btn-3').off('click')
	})
	//4,5는 jQuery.off메소드로 이벤트 처리가 됨
	$('#btn-off-4').click(function() {
		console.log('이벤트 처리 폐기')
		$('#btn-4').off('click')
	})
	$('#btn-off-5').click(function() {
		console.log('이벤트 처리 폐기')
		$('#btn-5').off('click')
	})

	//1,2,3은 제이쿼리 이벤트 처리방식으로 처리를 하지 않아서 영양을 안줌 그니까 실행이 안되는거임
	function fn1() {
		console.log('버튼1의 onclick이벤트 처리')
	}
	document.getElementById('btn-2').onclick = function(event) {
		console.log('버튼2의 onclick이벤트 처리')
	}
	document.getElementById('btn-3').addEventListener('click', function(event) {
		console.log('버튼3의 onclick이벤트 처리')
	})
	
	//4,5 이 두개만 제이쿼리의 이벤트 처리방식으로 처리를 했기 때문에 영향을 받고
	$('#btn-4').on('click', function(event) {
		console.log('버튼4의 onclick이벤트 처리')
	})
	
	$('#btn-5').click(function(event) {
		console.log('버튼5의 onclick이벤트 처리')
	})
</script>
</body>
</html>