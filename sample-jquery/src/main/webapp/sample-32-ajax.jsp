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
	<h1>json 형식의 응답 데이터 다루기</h1>

	<div class="row">
		<div class="col-4">
			<h3>베스트셀러</h3>
			<ul class="list-group-item" id="bestseller-list">
				
			</ul>
		</div>
		<div class="col-8">
			<h3>책 상세정보</h3>
			<table class="table table-bordered">
				<colgroup>
					<col width="15%">
					<col width="35%">
					<col width="15%">
					<col width="35%">
				</colgroup>
				<tbody>
					<tr>
						<th>번호</th>
						<th></th>
						<th>가격</th>
						<th></th>
					</tr>
					<tr>
						<th>제목</th>
						<th colspan="3"></th>
					</tr>
					<tr>
						<th>저자</th>
						<th></th>
						<th>출판사</th>
						<th></th>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
$(function() {

	//페이지가 로딩되면 jQuery로 ajax요청을 보내서 책 목록정보를 조회한다.
	//조회된 책 목록정보를 베스트셀러 리스트에 추가한다.
	$.getJSON('ajax2', function(books) {
		//변수명으로 구분을 짓고싶어서 (제이쿼리 라는것을 구분짓기 위해서) $를 그냥 갖다 붙임
		var $ul = $('#bestseller-list')
		
		$.each(books, function(index, book) {
			var $li = $('<li></li>')
			$li.addClass('list-group-item')
			$li.attr('data-book-no', book.no)
			$li.text(book.title)
			$ul.append($li)
		})
	})
	
	$('#bestseller-list').on('click', '.list')
	
	})
		
})
</script>
</body>
</html>