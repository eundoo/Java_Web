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
	<h1>일반 텍스트를 응답데이터로 받는 ajax처리</h1>
	
	<div class="row">
		<div class="col-4">
			<h3>쟝르</h3>
			<ul class="list-group">
				<li class="list-group-item">소설</li>
				<li class="list-group-item">기술</li>
				<li class="list-group-item">외국어</li>
			</ul>
		</div>
		<div class="col-8">
			<h3>쟝르별 베스트셀러</h3>
			<table class="table">
				<colgroup>
					<col width="`15%">
					<col width="`35%">
				</colgroup>
				<thead>
					<tr>
						<th>순위</th>
						<th>제목</th>
					</tr>
				</thead>
				<tbody></tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	$('.list-group-item').click(function() {
		$('table tbody').empty()
		$(this).addClass('active').siblings().removeClass('active')
		
		var text = $(this).text()
		//$.get(url, data, callback)
		//url: 요청URL
		//data: 서버로 보내는 요청 데이터 {key:value, key:value, ...}
		//callback: 서버로부터 성공적인 응답이 왔을 때 jQuery가 실행하는 함수
		//			callback함수의 매개변수에는 서버로부터 받은 데이터가 전달된다.
		// 			응답데이터예시 : 
		//							data = '이것이 자바다, 자바의 정석, 혼자 공부하는 자바'
		$.get('ajax1', {genre:text}, function(data)) {
			//items는 배열이다.
			//items=['이것이 자바다', '자바의 정석', '혼자 공부하는 자바']
			var items = data.split(',')			//서버로부터 받은 데이터 분석
			//$.each(배열,콜백함수)는 지정된 배열에 저장된 요소의 갯수만큼 콜백함수를 실행한다.
			//콜백함수를 실행할 때 마다 배열의 요소(값)가 순서대로 하나씩 콜백함수의 매개변수로 전달된다.
			$.each(items, function(index, item) {	//새로운 html컨텐츠 생성
				var row = '<tr>'
				row += '<td>"+(index+1)+"</td>'
				row += '<td>"+item+"</td>'
				row +='</td>'
				
				$('table tbody').append(row)		//생성된 html을 화면에 반영		
			})
		}
	})
})
</script>
</body>
</html>