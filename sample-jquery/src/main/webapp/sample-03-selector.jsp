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
	<h1>필터 선택자 연습하기</h1>

	<p>1</p>
	<p>2</p>
	<p>3</p>
	<p>4</p>
	<p>5</p>
	<p>6</p>
	<p>7</p>
	<p>8</p>
</div>
<script type="text/javascript">
	//첫번째 p를 선택해서 빨간색으로 변경하시오
	$("p:first").css('color', 'red')
	//마지막번째 p를 선택해서 파란색으로 변경하시오.
	$("p:last").css('color', 'blue')
	//홀수번째 p를 선택해서 배경색을  회색으로번경하시오
	$("p:odd").css('background-color', 'grey')
	//짝수번째 p를 선택해서 배경색을 노란색으로 변경하시오.
	$("p:even").css('background-color', 'yellow')
</script>
</body>
</html>