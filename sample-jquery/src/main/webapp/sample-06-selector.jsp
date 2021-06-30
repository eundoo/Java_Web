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
	<h1>기타 필터 선택자</h1>
	
	<div id="box-1">
		<p>p1</p>
		<p>p2</p>
		<p>p3</p>
		<p>p4</p>
	</div>
	<div id="box-2">
		<p>p5</p>
		<p>p6</p>
		<p>p7</p>
		<p>p8</p>
		<div id="inner-box">
			<p>p9</p>
			<p>p10</p>
			<p>p11</p>
		</div>
		<div id="inner-box">
			<p>p12</p>
			<p>p13</p>
			<p>p14</p>
		</div>
	</div>
</div>
<script type="text/javascript">
$("div").css({border:"1px solid black", margin: "10px", padding:"10px", backgroundColor:"#eee"});
//:first, :last, :first-child, :last-child, :nth-child(n) 활용
//p1만 선택하는 선택자
$("p:first").css('color', 'red');	//p:first
//p14만 선택하는 선택자
$("p:last").css('color', 'green');	//p:last
//p1, p5, p9, p12를 선택하는 선택자
$("p:first-child").css('background-color', 'yellow');
//p4, p11, p14를 선택하는 선택자
$("p:last-child").css('border', '1px solid blue');
//p3, p7, p11, p14를 선택하는 선택자.
$("p:nth-child(3)").css('text-decoration', 'underline');

//:eq(n), :lt(n), :gt(n) 활용
//p2만 선택하는 선택자
$("p:eq(1)").css('font-style', 'italic');	//p:eq(1)
//p1, p2를 선택하는 선택자
$("#box-1 p:nth-child(1), #box-1 p:nth-child(2)").css('font-size', '50px'); //이거 #box-1중복되는거 싫은뎅	//p:lt(2)
//p3, p4를 선택하는 선택자
$("#box-1 p:nth-child(3), #box-1 p:nth-child(4)").css('font-size', '8px');	//#box-1 p:gt(1)

//위에 나열된거 전부 활용
//p9, p12를 선택하는 선택자
$("#box-2 > div p:first-child").css('font-weight', 'bold');	//.inner-box p:first-child
//p9만 선택하는 선택자
$("#box-2 > div:first p:first-child").css('border', '3px solid red');	//.inner-box p:first	.inner-box:eq(0) p:first		
//p3, p7를 선택하는 선택자
$("#box-1 p:nth-child(3), #box-2 > p:nth-child(3)").css('border', "2px solid yellow");			//.container > div > p:nth-child(3)		
																								// #box-1 >p:eq(2), #box-2 > p:eq(2)
</script>
</body>
</html>