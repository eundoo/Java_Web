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
	<h1>부모, 조상 엘리먼트 찾아다니기</h1>
	
	<div id="box">
		<ul>
			<li><a href="">링크1</a></li>
			<li><a href="">링크2</a></li>
			<li><a href="">링크3</a></li>
			<li><a href="">링크4</a></li>
		</ul>
	</div>
</div>
</body>
<script type="text/javascript">
$(function() {
	$('#box a').click(function(event) {
		event.preventDefault()
	
		//이벤트가 발생한 엘리먼트 -> <a>
		console.log('this', this)
		
		//이벤트가 발생한 엘리먼트를 포함하고 있는 jQuery객체
		console.log('$(this)', $(this))

		//이벤트가 발생한 엘리먼트의 부모 엘리먼트 -> <li>
		console.log('$(this).parent()',(this).parent())
		
		//이벤트가 발생한 엘리먼트의 모든 조상 엘리먼트 -> <li>, <ul>, <div id='box'>, <div id='container'>, <body>, <html>
		console.log('$(this).parents()', $(this).parents())
		
		//이벤트가 발생한 엘리먼트의 조상엘리먼트 중에서 div인 것 -> <div id='box'>, <div id='container'>
		console.log('$(this).parents("div")', $(this).parents("div"))
		
		//이벤트가 발생한 엘리먼트의 조상엘리먼트 중에서 아이디가 box인 것 -> <div id='box'>
		console.log('$(this).parents("#box")', $(this).parents("#box"))
		
		//이벤트가 발생한 엘리먼트의 조상 엘리먼트 중에서 가장 가까운 div인 것 -> <div id='box'>
		console.log('$(this).closest("div")', $(this).closest("div"))
		
	})
})
</script>
</html>