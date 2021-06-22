<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>출장 리스트 직원용</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
	<!-- http://localhost/semi-project/bss/list -->
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
									<th>타이틀</th>
									<th>메모</th>
									<th>시작일</th>
									<th>종료일</th>
									<th>파일</th>
									<th>상태</th>
									<th>신청인</th>
									<th>신청날짜</th>
								</tr>
							</thead>
							<tbody>
							<c:forEach var="business" items="${business	}">
								<tr>
									<td>${business.no }</td>
									<td>${business.title }</td>
									<td>${business.memo }</td>
									<td><fmt:formatDate value="${business.startDate }"/></td>
									<td><fmt:formatDate value="${business.endDate }"/></td>
									<td>${business.fileName }</td>
									<td>${business.status }</td>
									<td>${business.empNo }</td>
									<td><fmt:formatDate value="${business.createdDate }"/></td>
									<td>
									<c:if test="${business.status eq '신청' }">
										<button type="button" class="btn btn-primary btn-sm" onclick="clickModify(${business.no})">수정</button>
										<button type="button" class="btn btn-danger btn-sm" onclick="clickDelete(${business.no})">삭제</button>
									</c:if>
									<c:if test="${business.status eq '승인' }">
										<button type="button" class="btn btn-success btn-sm" onclick="clickCompleted(${business.no})">완료</button>
									</c:if>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="mb-1 text-end">
				<a href="register" class="btn btn-primary">출장 등록</a>
			</div>			
		</form>
	</main>
</div>	
<script type="text/javascript">

	function clickCompleted(bssNo) {
		//완료
		var confirmValue = confirm("완료를 클릭하면 되돌릴 수 없습니다. 완료하시겠습니까?")
		if(!confirmValue) {
			return
		}
		location.href="status?status=completed&no="+bssNo
	}
	
	function clickDelete(bssNo) {
		//삭제
		var confirmValue = confirm("삭제를 클릭하면 되돌릴 수 없습니다. 삭제하시겠습니까?")
		if(!confirmValue) {
			return
		}
		location.href="status?status=delete&no="+bssNo
	}
	
	function clickModify(bssNo) {
		//수정
		var confirmValue = confirm("수정폼으로 이동하시겠습니까?")
		if(!confirmValue) {
			return
		}
		location.href="modify?no="+bssNo
	}
	

</script>
</body>
</html>