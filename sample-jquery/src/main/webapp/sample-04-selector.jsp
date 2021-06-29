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
	<div id="box-1">
		<h3>h3</h3>
		<a>링크1</a>
		
		<h4>리스트</h4>
		<ul>
			<li><a>리스트링크1</a></li>
			<li><a>리스트링크2</a></li>
			<li><a>리스트링크3</a></li>
			<li><a>리스트링크4</a></li>
		</ul>
	</div>
	
	<div id="box-2">
		<h3>h3</h3>
		<a>링크2</a>
		<a>링크3</a>
		<h4>리스트</h4>
		<ul>
			<li><a>리스트링크1</a></li>
			<li><a>리스트링크2</a></li>
			<li><a>리스트링크3</a></li>
			<li><a>리스트링크4</a></li>
		</ul>
	</div>
	
	<div id="box-3">
		<a>링크4</a>
		<h3>h3</h3>
		<a>링크5</a>
		<a>링크6</a>
		<a>링크7</a>
		<p>p</p>
		<a>링크8</a>
		<a>링크9</a>
	</div>
	
</div>
<script type="text/javascript">
	//첫번째 div의 링크1을 선택해서 배경색을 노란색으로 변경하기
	$("#box-1 > a").css("background-color", "yellow");
	//두번째 div의 링크2를 선택해서 글자를 링크22222로 변경하기
	$("#box-2 > a:first").text("링크22222");
	//첫번째 div의 모든 링크를 선택해서 테두리를 표시하기
	$("#box-1 a").css("border", "1px solid black");
	//두번째 div에서 h3 다음에 있는 a들을 선택해서 글자크기를 변경하기
	$("#box-2 h3 ~ a").css("font-size","50px");
	//두번째 div에서 리스트링크들을 선택해서 글자크기를 변경하기
	$("#box-2 ul a").css("font-size", "8px")
	//첫번째 div의 리스트 링크 중에서 첫번째 리스트링크1만 선택해서 배경색을 초록색으로 변경하기
	$("#box-1 ul a:first").css("background-color", "lightgreen")
	//첫번째 div의 맨 마지막번째 리스트링크4와 두번째 div의 맨 마지막번째 리스트링크4를 선택해서 배경색을 회색으로 변경하기
	$("#box-1 ul a:last, #box-2 ul a:last").css("background-color", "lightgrey")
	//세번째 div의 모든 링크를 선택해서 배경색을 노란색으로 변경하기
	$("#box-3 a").css("background-color", "yellow");
	//세번째 div의 링크5를 선택해서 빨간색 테두리를 표시하기
	$("#box-3 h3 + a").css("border", "2px solid red");
	//세번째 div의 h3다음에 있는 모든 링크를 선택해서 글자를 강조하기 
	$("#box-3 h3 ~ a").css("font-style", "italic")
	
</script>
</body>
</html>