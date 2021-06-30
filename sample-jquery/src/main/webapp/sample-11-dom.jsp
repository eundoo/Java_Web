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
	<h1>텍스트 컨텐츠, html 컨텐츠, 속성, 폼요소의 값, 비활성화/읽기전용/체크상태 변경하기</h1>
	
	<div id="box-1">
		<p>텍스트</p>
		<p>텍스트</p>
	</div>
	<div id="box-2">
		<form>
			이름:<input type="text" name="username" /><br />
			경력:<select name="userskill">
					<option value="1">1년 이상</option>
					<option value="3">3년 이상</option>
					<option value="5">5년 이상</option>
					<option value="7" selected>7년 이상</option>
				</select><br />
			메모:<textarea rows="3" cols="60" name="usermemo"></textarea>
		</form>
	</div>
	<div id="box-3">
		<img alt="바다" src="images/1.jpg" id="image-box">
	</div>
	
	<div id="box-4">
		<input type="text" name="empNo" /><br />
		<input type="checkbox" name="empSkill" value="java" />자바	
		<input type="checkbox" name="empSkill" value="python" />파이썬	
		<input type="checkbox" name="empSkill" value="db" />데이터베이스
	</div>
</div>
<script type="text/javascript">
	$("div").css({border:'1px solid black', padding:'10px', margin:'10px'})
	
	$("#box-1 p:eq(0)").text('텍스트 컨텐츠를 변경함')
	$("#box-1 p:eq(1)").html('<strong>html 컨텐츠 </strong>를 변경함')

	$("#box-2 :text[name=username]").val('김유신')	
	$("#box-2 :select[name=userskill]").val('3')
	$("#box-2 :textarea[name=usermemo").val('오둥이')
	
	var num = 1
	setInterval(function()) {
		$("#image-box").attr("src", "images/" + (num%3+1) + ".jpg")
		num++
	}, 1500)
	
	$("box-4 input[name=empNo]").prop("disabled", true)
	$("box-4 :checkbox[name=empSkill]:eq(0)").prop("disabled", true)
	$("box-4 :checkbox[name=empSkill]:eq(1)").prop("checked", true)
	$("box-4 :checkbox[name=empSkill]:eq(2)").prop("checked", true)
</script>
</body>
</html>