<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>수정폼</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	 <!-- http://localhost/semi-project/bss/modify  -->
	<div class="container">
		<main>
			<form id="business-form" method="post" action="/erp/bss/modify" onsubmit="return formSubmit()">
				<input type="hidden" name="bssNo" value="${business.no }" />
				<input type="hidden" name="empNo" value="${business.empNo}" />
				<input type="hidden" name="managerNo" value="${business.managerNo }" />
				<input type="hidden" name="status" value="${business.status }"/>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">출장 제목</label>
		   			<input type="text" class="form-control" id="bss-title" name="bssTitle" placeholder="출장 제목" value="${business.title }">
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">출장 메모</label>
		   			<input type="text" class="form-control" id="bss-memo" name="bssMemo" placeholder="출장 메모" value="${business.memo }">
		 		</div>		 		
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">시작일</label>
		   			<input type="date" class="form-control" id="bss-start-date" name="bssStartDate" placeholder="시작일" value='<fmt:formatDate value="${business.startDate }" pattern="yyyy-MM-dd"/>' disabled>
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">마감일</label>
		   			<input type="date" class="form-control" id="bss-end-date" name="bssEndDate" placeholder="마감일" value='<fmt:formatDate value="${business.endDate }" pattern="yyyy-MM-dd"/>' disabled>
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">파일이름</label>
		   			<input type="file" class="form-control" id="bss-file-name" name="bssFileName" placeholder="파일이름">
		 		</div>

		 		<div class="form-group">
		   			<label for="formGroupExampleInput">사원 번호</label>
		   			<input type="text" class="form-control" id="emp-no" name="empNo" placeholder="사원번호" value="${business.empNo }" disabled>
		 		</div>	
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">매니저 번호</label>
		   			<input type="text" class="form-control" id="manager-no" name="managerNo" placeholder="매니져번호" value=${business.managerNo } disabled>
		 		</div>	
		 				
				<div class="mb-1 text-end">
					<button type="button" class="btn btn-outline-primary" onclick="clickCancel()">취소</button>
					<button type="button" class="btn btn-primary" onclick="clickModify()">수정</button>
				</div>
			
			</form>
		</main>
	</div>
	<script type="text/javascript"> 
		function formSubmit() {
			var bssTitle = document.getElementById("bss-title");
			if(!bssTitle.value.trim()) {
				alert("출장 제목은 필수 입력값 입니다.")
				bssTitle.focus();
				return false;
			}
		}
		function clickCancel() {
			var confirmValue = confirm("취소 하시겠습니까?");
			if(!confirmValue){
				return;
			}
			location.href = "list";
		}
		
		function clickModify() {
			
			var confirmValue = confirm("수정 하시겠습니까?");
			if(!confirmValue) {
				return;
			}
			document.getElementById("business-form").submit();
		}
	</script>
</body>
</html>