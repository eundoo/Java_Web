<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>출장폼</title>
 	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	 <!-- http://localhost/semi-project/bss/register  -->
	<div class="container">
		<main>
			<form id="business-form" method="post" action="/erp/bss/register" enctype="multipart/form-data" onsubmit="return formSubmit()">
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">출장 제목</label>
		   			<input type="text" class="form-control" id="bss-title" name="bssTitle" placeholder="출장 제목">
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">출장 메모</label>
		   			<input type="text" class="form-control" id="bss-memo" name="bssMemo" placeholder="출장 메모">
		 		</div>		 		
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">시작일</label>
		   			<input type="date" class="form-control" id="bss-start-date" name="bssStartDate" placeholder="시작일">
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">마감일</label>
		   			<input type="date" class="form-control" id="bss-end-date" name="bssEndDate" placeholder="마감일">
		 		</div>
		 		<div class="form-group">
		   			<label class="d-block" for="formGroupExampleInput">파일이름</label>
		   			<input type="file" class="form-control" id="bss-file-name" name="bssFileName" placeholder="shortFileName여기해야되는데 어떻게 가져옴???">
		 		</div>
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">사원 번호</label>
		   			<input type="text" class="form-control" id="emp-no" name="empNo" placeholder="사원번호">
		 		</div>	
		 		<div class="form-group">
		   			<label for="formGroupExampleInput">매니저 번호</label>
		   			<input type="text" class="form-control" id="manager-no" name="managerNo" placeholder="매니저번호">
		 		</div>	
		 				
				<div class="mb-1 text-end">
					<a href="list" class="btn btn-primary">취소</a>
					<button type="submit" class="btn btn-primary">등록</button>
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
			var bssMemo = document.getElementById("bss-memo");
			if(!bssMemo.value.trim()) {
				alert("출장 메모는 필수 입력값 입니다.")
				bssMemo.focus();
				return false;
			}		
			var empNo = document.getElementById("emp-no");
			if(!empNo.value.trim()) {
				alert("사원번호는 필수 입력값 입니다.")
				empNo.focus();
				return false;
			}
			var managerNo = document.getElementById("manager-no");
			if(!managerNo.value.trim()) {
				alert("매니저번호 필수 입력값 입니다.")
				managerNo.focus();
				return false;
			}

		}
		
	</script>
</body>
</html>
