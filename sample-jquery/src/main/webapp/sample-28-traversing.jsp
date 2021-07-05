<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<h1>형제 엘리먼트 찾아가기</h1>
	<div class="row">
		<div class="col">	
			<div class="box-1">
				<h3>siblings</h3>
				<ul class="list-group">
					<li class="list-group-item">item1</li>
					<li class="list-group-item">item2</li>
					<li class="list-group-item">item3</li>
					<li class="list-group-item">item4</li>
					<li class="list-group-item">item5</li>
					<li class="list-group-item">item6</li>
					<li class="list-group-item">item7</li>
				</ul>
			</div>
		</div>
		<div class="col">	
			<div class="box-2">
				<h3>siblings</h3>
				<ul class="list-group">
					<li class="list-group-item">item1</li>
					<li class="list-group-item">item2</li>
					<li class="list-group-item">item3</li>
					<li class="list-group-item">item4</li>
					<li class="list-group-item">item5</li>
					<li class="list-group-item">item6</li>
					<li class="list-group-item">item7</li>
				</ul>
			</div>
		</div>
		<div class="col">	
			<div class="box-3">
				<h3>siblings</h3>
				<ul class="list-group">
					<li class="list-group-item">item1</li>
					<li class="list-group-item">item2</li>
					<li class="list-group-item">item3</li>
					<li class="list-group-item">item4</li>
					<li class="list-group-item">item5</li>
					<li class="list-group-item">item6</li>
					<li class="list-group-item">item7</li>
				</ul>
			</div>
		</div>
		<div class="col">	
			<div class="box-4">
				<h3>siblings</h3>
				<ul class="list-group">
					<li class="list-group-item">item1</li>
					<li class="list-group-item">item2</li>
					<li class="list-group-item">item3</li>
					<li class="list-group-item">item4</li>
					<li class="list-group-item">item5</li>
					<li class="list-group-item">item6</li>
					<li class="list-group-item">item7</li>
				</ul>
			</div>
		</div>
		<div class="col">	
			<div class="box-5">
				<h3>siblings</h3>
				<ul class="list-group">
					<li class="list-group-item">item1</li>
					<li class="list-group-item">item2</li>
					<li class="list-group-item">item3</li>
					<li class="list-group-item">item4</li>
					<li class="list-group-item">item5</li>
					<li class="list-group-item">item6</li>
					<li class="list-group-item">item7</li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
<script type="text/javascript">
$(function() {
	//	.prev()
	$(".box-1 .list-group-item").click(function() {
		$('.box-1 .list-group-item').removeClass('active list-group-item-primary')
		$(this).addClass('active')
		$(this).prev().addClass('list-group-item-primary')
	})
	//	.preAll()
	$(".box-1 .list-group-item").click(function() {
		$('.box-2 .list-group-item').removeClass('active list-group-item-primary')
		$(this).addClass('active')
		$(this).prevAll().addClass('list-group-item-primary')
	})
	//	.next()
	$(".box-1 .list-group-item").click(function() {
		$('.box-3 .list-group-item').removeClass('active list-group-item-primary')
		$(this).addClass('active')
		$(this).next().addClass('list-group-item-primary')		
	})
	//	/nextAll()
	$(".box-1 .list-group-item").click(function() {
		$('.box-4 .list-group-item').removeClass('active list-group-item-primary')
		$(this).addClass('active')
		$(this).nextAll().addClass('list-group-item-primary')		
	})
	//	.siblings()
	$(".box-1 .list-group-item").click(function() {
		$('.box-5 .list-group-item').removeClass('active list-group-item-primary')
		$(this).addClass('active')
		$(this).siblings().addClass('list-group-item-primary')		
	})
}) 
</script>
</html>