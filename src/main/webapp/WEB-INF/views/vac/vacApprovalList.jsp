<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>휴가 리스트 승인폼 매니저용</title>
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
		<form>
			<div class="row mb-3">
				<div class="col-12">
					<div class="border p-2 bg-light">
						<table class="table">
							<colgroup>
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">
								<col width="10%">

							</colgroup>
							<thead>	
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>시작날</th>
									<th>종료날</th>
									<th>vacdays?</th>
									<th>매니저번호</th>
									<th>사원번호</th>
									<th>상태</th>
									<th>메모</th>
									<th>생성날짜</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="vacations" items="${vac}">
								<tr>
									<td>승인</td>
									<td>반려</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>		
		</form>
	</main>
</div>
</body>
</html>