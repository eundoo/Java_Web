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
<h1>기타 필터 연산자</h1>
<table>
<thead>
	
</thead>
<tbody>
	<tr>
		<td>10</td>
		<td>김나나</td>
		<td>010-1111-1111</td>
		<td>@kim</td>
	</tr>
	<tr>
		<td>10</td>
		<td>오나나</td>
		<td>010-1111-1111</td>
		<td>@oh</td>
	</tr>
	<tr>
		<td>10</td>
		<td>이나나</td>
		<td>010-1111-1111</td>
		<td>@lee</td>
	</tr>
</tbody>
</table>
</div>
<script type="text/javascript">
//텍스트 컨텐츠로 김유신을 포함하고 있는 엘리먼트를 선택하기
$('td:contains(김유신)').css({color:'red', fontWeight:'bold'})
$('tr:contains(김유신)').css({'background-color', 'yellow'})

//th태그를 가지고 있는 tr 엘리먼트를 선택하기
$('tr:has(th)').css('background-color', '#eee')

//th태그를 가지고 있지 않은 tr 엘리먼트를 선택하기
$('tr:not(:has(th))').css('font=size', '35px')
$('tbody tr').css('font-style','italic')
</script>
</body>
</html>