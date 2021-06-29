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
	<h1>jQuery 기본 선택자 연습</h1>
	
	<h2 id="header-1" class="heading">h2</h2>
	<p>p1</p>
	<p>p2</p>
	<p>p3</p>
	<p>p4</p>
	
	<h2 id="header-2" class="heading">h2</h2>
	<p>p5</p>
	<p>p6</p>
	<p>p7</p>
	<p>p8</p>
</div>
<script type="text/javascript">
	//모든 엘리먼트를 선택해서 글자색을 빨간색으로 변경하시오.
	$("*").css("color", "red");
	//모든 p엘리먼트를 선택해서 글자크기를 변경하시오.
	$("p").css("font-size","30px");
	//id속성값이 header-1인 엘리먼트를 선택해서 배경색으로 노란색으로 변경하시오.
	$("#header-1").css("background-color", "yellow");
	//클래스 속성값에 heading이 포함되어있는 엘리먼트를 선택해서 테두리를 표시하시오.
	$(".heading").css("boder", "1px solid black")
</script>
</body>
</html>