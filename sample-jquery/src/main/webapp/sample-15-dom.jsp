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
	<h1>클래스 조작하기</h1>
	
	<div id="box-1">
		<button id="btn-1" class="btn btn-primary">버튼</button>
		<button id="btn-2" class="btn btn-primary">버튼</button>
	</div>
</div>
<script type="text/javascript">
	$("button:eq(0)").addClass("btn-danger").removeClass("btn-primary")
	
	$("button:eq(1)").toggleClass("disabled")
	var hasDisabledClass = $("button:eq(1)").hasClass("disabled")
	console.log("disabled가 포함되어 있는가?",hasDisabledClass)
	
	$("button:eq(1)").toggleClass("disabled")
	hasDisabledClass = $("button:eq(1)").hasClass("disabled")
	console.log("disabled가 포함되어 있는가?",hasDisabledClass)
	
	
	
</script>
</body>
</html>