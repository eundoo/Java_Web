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
	<h1>필터링 하기</h1>
	<div class="row">
		<div class="col-2">
			<ul class="list-group">
				<li class="list-group-item">성적우수자</li>
				<li class="list-group-item">합격자</li>
				<li class="list-group-item">불합격자</li>
			</ul>
		</div>
		<div class="col-10">
			<table class="table table-bordered">
				<colgroup>
					<col width="16.6%">
					<col width="16.6%">
					<col width="16.6%">
					<col width="16.6%">
					<col width="16.6%">
					<col width="16.6%">
				</colgroup>
				<thead>
					<tr>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>
						<th>충점</th>
						<th>평균</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>오나나</td>
						<td>90</td>
						<td>95</td>
						<td>80</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>김나나</td>
						<td>85</td>
						<td>60</td>
						<td>70</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>이나나</td>
						<td>50</td>
						<td>75</td>
						<td>95</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>임나나</td>
						<td>80</td>
						<td>90</td>
						<td>100</td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>금나나</td>
						<td>100</td>
						<td>95</td>
						<td>80</td>
						<td></td>
						<td></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {
	$('tbody tr').each(function(index, el) {
		var kor = $(el).find('td:eq(1)').text()
		var end = $(el).find('td:eq(2)').text()
		var math = $(el).find('td:eq(3)').text()
	
		var totalScore = parseInt(kor) + parseInt(eng) + parseInt(math)
		var average = Math.trunc(totalScore/3)
		
		$(el).find('td:eq(4)').text(totalScore)
		$(el).find('td:eq(5)').text(average)
	})
	
	//평균이 90점 이상인 행을 선택하기
	$('#item-1').click(function() {
		//선택된 td들마다 filter가 하나씩 하나씩 실행됨
		$('tbody td:last-child').filter(function(index,el) {
			var average = parseInt($(el).text())
			return average >= 90
		})parent().addClass('bg-light')
	})
	})
	//평균이 60점 이상인 행을 선택하기
	$('x')
	$('#item-2').click(function() {
		$('tbody tr').removeClass('br-success,' )
		$('tbody td:last-child').filter(function( {
			var average = parseImt(this).text()
			return average >= 60
		}).parent().addClass('bg-success')
	})
	//평균이 60점 미만인 행을 선택하기
	$('#item-3').click(function() {
		$('tbody td:last-child').filter(function( {
			var average = parseImt(this).text()
			return average >= 60
		}).parent().addClass('bg-danger')
	})
	})
</script>
</body>
</html>