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
	<h1>jQuery 연습하기</h1>
	<h3>jQuery는?</h3>
	<p>강력한 선택자 함수를 제공한다.</p>
	<p>HTML문서를 조작할 수 있는 다양한 메소드를 제공한다.</p>
	<p>이벤트 처리를 일관된 방식으로 아주 쉽게 처리할 수 있다.</p>
	<p>Ajax 처리를 아주 쉽게 구현할 수 있다.</p>
</div>
<script type="text/javascript">
	//jQuery의 $()함수 실행하기
	
	//선택자를 매개변수 인자로 전달해서 실행하기
	$('p').css("color","red");
	
	//함수를 매개변수 인자로 전달해서 실행하기
	$(function() {
		//웹페이지가 준비되었다(HTML이 준비되었다.) -> 웹 브라우저가 html문서를 해석해서 HTML DOM객체를 생성하고,
		//											   화면에 표시하기 직전인 시점이다.
		//						-> HTML DOM 객체의 생성이 완료되었기 때문에
		//						   $()함수로 엘리먼트를 선택하고, 조작하고, 이벤트 핸들러를 엘리먼트에 등록하는
		//						   작업들을 수행하기 딱 좋은 시점이다. 
		console.log("웹페이지가 준비되면 자동으로 실행한다.")
	}
	/*
		$('p')는 HTML 문서에서 모든 p태그(엘리먼트)를 검색해서 jQuery집합객체로 반환한다.
		jQuery 집합객체에는 검색된 모든 p엘리먼트가 포함되어있다.
		jQuery 집합객체에는 검색된 모든 p엘리먼트를 조작하거나, 스타일을 변경할 수 있는 다양한
		메소드를 가지고 있다.
		
		jQuery 지합객체의 대략적인 구성(실제jQuery집합객체와는ㅇ 다름)
		{
		elements:[p,p,p,p],
		css:function(){검색된 엘리먼트의 스타일을 변경하는 메소드}
		hide:function(){검색된 엘리먼트를 화면에 보이지 않게하는 메소드}
		show:function(){검색된 엘리먼트를 화면에 표시하는 메소드}
		remove"finction{검색된 엘리먼트를 화면에서 삭제하는 메소드}
		text:function(){검색된 엘리먼트의 텍스트 컨텐츠를 반환하는 메소드}
		html:function(){검색된 엘리먼트의html컨텐츠르 반환하는메소드}
		...등 다양한 메소드 존재
		}
	
		//jQuery집합객체가 1과 jQuery집합객체2는 같은 객체이다.
		//대부분의 jQuery집합객체의 메소드들은 메소드를 실행하고 나면, jQuery집합객체를 
		//다시 반환한다.
		
		var jQuery집합객체1 = ${"p"};
		var jQuery집합객체2 = jQuery집합객체1.css("color", "red");
		jQuery집합객체2.click(function() { alert("클릭됨"); })
		
		$("p").css("color", "red").click(function() {alert("클릭됨"); });
	*/
</script>
</body>
</html>