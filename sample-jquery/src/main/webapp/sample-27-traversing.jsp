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
	<h1>자손 엘리먼트 찾아가기</h1>

	<ul class="list-group" id="user-list">
		<li class="list-group-item d-flex justify-content-between align-item-center"><span class="label">김도도</span><span class="badge badge-warning">100</span></li>
		<li class="list-group-item d-flex justify-content-between align-item-center"><span class="label">이도도</span><span class="badge badge-warning">60</span></li>
		<li class="list-group-item d-flex justify-content-between align-item-center"><span class="label">박도도</span><span class="badge badge-warning">30</span></li>
		<li class="list-group-item d-flex justify-content-between align-item-center"><span class="label">오도도</span><span class="badge badge-warning">80</span></li>
		<li class="list-group-item d-flex justify-content-between align-item-center"><span class="label">임도도</span><span class="badge badge-warning">70</span></li>
	</ul>
	
	<div class="mt-3">
		<div class="border bg-light p-2 mb-2">이름: <span id="user-name"></span></div>
		<div class="border bg-light p-2">점수: <span id="user-score"></span></div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	$('#user-list .list-group-item').click(function() {s
		var name = $(this).find('span.label').text()
		var score = $(this).find('span.badge').text()
		
		$('#user-name').text(name)
		$('#user-score').text(score)
		
		//.siblings()를 사용해서 active상태 변경하기
		//$(this).addClass('active').siblings().removeClass('active')
		
		//걍 일반적으로 다 지우고 클릭한 것 만 active만들기
		$('#user-list li').removeClass('active')
		$(this).addClass('active')

		//	.end()를 사용해서 active상태 변경하기
		$(this).parents('.list-group').find('.list-group-item').removeClass('active')
			.end()
			.end()
			.addClass('active')
		//end()는 removeClass는 영향 가지 않는다. 필터링만 영향간다!!!
		//.end()하면 .find('.list-group-item')가 삭제되고
		//.end()하면 .parents('.list-group')가 삭제된다.
		//그럼 결국 $(this).removeClass('active').addClass('active')이렇게 되는건가..?
	})
})
</script>
</body>
</html>