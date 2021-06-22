<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>마이프로필</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<main>
		<div class="container">
			<div>
				<button type="button" class="btn btn-light" onclick="button1_click();">출근</button>
				<button type="button" class="btn btn-light" onclick="button2_click();">외출</button>
				<button type="button" class="btn btn-light" onclick="button3_click();">복귀</button>
				<button type="button" class="btn btn-light" onclick="button4_click();">퇴근</button>
			</div>

			<div>
				<table>
					<thead>
						<tr class="col-4">
							<th class="p-3">출근</th>
							<th class="p-3">외출</th>
							<th class="p-3">복귀</th>
							<th class="p-3">퇴근</th>
						</tr>
					</thead>
					
					<tbody>
						<tr class="col-4">
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</main>
</div>	
<script>
	function button1_click() {
		alert('출근등록이 완료되었습니다.')
	}
	function button2_click() {
		alert('어딜가는게야')
	}
	function button3_click() {
		alert('어디갔다온게야')
	}
	function button4_click() {
		alert('6시퇴근 >-<')
	}
</script>
</body>
</html>