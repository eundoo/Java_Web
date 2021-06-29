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
	<div>
		<p>p1</p>
		<p>p2</p>
		<p>p3</p>
		<p>p4</p>
	</div>
	<div>
		<p>p5</p>
		<p>p6</p>
		<p>p7</p>
		<p>p8</p>
		<div>
			<p>p12</p>
			<p>p13</p>
			<p>p14</p>
		</div>
	</div>
	<div>
		<p>p9</p>
		<p>p10</p>
		<p>p11</p>
	</div>
</div>
<script type="text/javascript">
	//css("프로퍼티", "값") --> 객체
	//css({프로퍼티:"값", 프로퍼티:"값", 프로퍼티:"값"}) / background-color는 오류임
	$("div").css({border:"1px solid black", margin:"10px", padding:"10px", backgroundColor:"#eee"});
	$("p:first").css("color", "red");
	$("p:last").css("color","blue"); 
	$("p:first-child").css("background-color","yellow"); 
	$("p:last-child").css("border", "1px solid red");
	$("p:nth-child(2)").css({color:"red", fontWeight:"bold"})	//둘째찾기
</script>
</body>
</html>