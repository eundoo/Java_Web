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
	<h1>onchange이벤트</h1>
	
	<div id="box-1">
		<form>
			<div class="form-group">
				<label>입사구분</label>
				<select class="form-control" name="career" id="combobox-career">
					<option value="" selected disabled>선택하세요</option>
					<option value="N">신입</option>
					<option value="Y">경력직</option>
				</select>
			</div>
			<div class="form-group" id="box-worked">
				<label>경력사항</label>
				<input type="text" class="form-control" name="worked" />
			</div>
		</form>
	</div>
</div>
<script type="text/javascript">
	$(function() {	//페이지가 로딩 되자마자 바로 실행~!~!~!
		//경력사항 입력란을 화면에 표시되지 않게 한다.
		$('#box-worked').hide()
		
		//입사구분 입력란의 select박스의 선택된 옵션이 변경될 때마다 onchange이벤트 발생
		//onchange이벤트 발생시 실행될 이벤트 핸들러 함수를 jQuery의 change()함수에 전달하기
		//신입엥서 신입을 누를 경우 경력직에서 경력직을 누를경우는 변화가 없어서 바뀌는거 없음
		$('#combobox-career').change(function() {
			var careerValue = $(this).val()
			if(careerValue == 'Y') {
				$('#box-worked').show()
			} else if(careerValue == 'N') {
				$('#box-worked').hide()
			}
		})
	})
</script>
</body>
</html>