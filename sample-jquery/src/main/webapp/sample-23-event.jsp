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
	<h1>onscroll 이벤트 처리</h1>
	<div class="row">
		<div class="col-6 offset-3">
			<div class="row mt-3" id="box-images">
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
				<div class="col-4 p-2">
					<img src="images/1.jpg" class="img-thumbnail" alt="사진" /> 
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	//화면(window객체) 스크롤 될 때 마다 함수 실행시키기
	$(window).scroll(function() {
		var imageFilenames = ["images/1.jpg", "images/2.jpg", "images//3.jsp"]
		//브라우저 화면의 높이를 조회한다.
		var windowHeight = $(window).height()
		
		//화면이 스크롤 될 때 (onscroll이벤트가 발생될 때)마다 실행되는 이벤트 핸드러 함수를 jQuery에 전달
		$(window).scroll(function() {
			//브라우저에 현재 표시되고 있는 HTML문서의 높이를 조회한다.
			var documentHeight = $(document).height()
			//스크롤 된 높이를 조회한다.
			var scrollTop = $(window).scrollTop() //scrollTop - >스크롤 한 양
		
			//화면높이와 스크롤된 높이가 문서의 크기보다 커질 때
			//새로운 이미지를 조회해서 HTML컨텐츠를 생성한 다음 아이디가 box-image
			console.log("창높이", windowHeight, "스크롤 높이", scrollTop, "문서높이", documentHeight)
			if(windowHeight + scrollTop + 100 >= documentHeight) {
				//실제 프로젝트에서는 ajax를 사용해서 서버로부터 그 다음 이미지를 가져온다.
				
				//새로 이어붙일 이미지파일명이 포함된 배열을 조회한다.
				var images = randomImages()
				//배열의 각 요소를 순회하며서 화면에 추가할 html컨텐츠를 생성한다.
				//$each()배열을 가지고 놀 때 사용
				$.each(images, function(index, imageName) {
					//화면에 추가할 html 컨텐츠를 생성한다.
					var htmlContent = createImagebox(imageName)
					//생성된 html컨텐츠를 아이디가 box-iamges의 마지막 자식 엘리먼트 다음에 추가한다.
					$(htmlContent).appendTo("#box-images")
				})
				//500 400 100 1000 		1000 까지 가기 전에 미리 100을 줘서 아래를 붙이는거네
			}
		})
		
		function createImagebox(imageName) {
			var content = '<div class="col-4 p-2">'
				content = '<img src=""+imageName+'" class="img-thumbnail" alt="사진" />'
				content = '</div>'
				
			return content
		}
		
		//최대 6개의 이미지 이름을 반환한다.
		function randomImages() {
			var images = []
			
			var MAX_APPEND_IMAGES_SIZE = 6
			for(var i=0; i<MAX_APPEND_IMAGES_SIZE; i++) {
				var index = Math.trunc(Math.random()*10)%3
				images.push(imageFilenames[index])
			}
			return images
		}
	})
	
	
</script>
</body>
</html>