<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>출장 리스트 승인폼 매니저용</title>
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
									<th>출장번호</th>
									<th>출장 타이틀</th>
									<th>출장 메모</th>
									<th>출장 시작일</th>
									<th>출장 마지막일</th>
									<th>파일</th>
									<th>상태</th>
									<th>직원번호</th>
									<th>매니저번호</th>
									<th>생성날짜</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="business" items="${bss}">
								<tr>
									<td>${business.no }</td>
									<td>${business.title }</td>
									<td>${business.memo }</td>
									<td><fmt:formatDate value="${business.startDate }"/></td>
									<td><fmt:formatDate value="${business.endDate }"/></td>
									<td><a href="/erp/bss/download?no=${business.no }">${business.shortFileName }</a></td>
									<td>${business.status }</td>
									<td>${business.empNo }</td>
									<td>${business.managerNo }</td>
									<td><fmt:formatDate value="${business.createdDate }"/></td>
									<td><a href="/erp/bss/app?no=${business.no }&name=approval" class="btn btn-primary">승인처리</a></td>
									<td><a href="/erp/bss/app?no=${business.no }&name=reject" class="btn btn-primary">반려처리</a></td>
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