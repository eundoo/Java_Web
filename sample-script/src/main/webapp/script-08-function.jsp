<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 함수</title>
<script type="text/javascript">
	//전역변수와 지역변수
	/*
		전역변수
			- 모든 함수에서 사용가능한 변수
			- 전역변수의 정의
				* 함수의 바깥에서 정의 
				* 함수의 내부에서 var키워드 없이 정의
				
		지역변수
			- 변수가 정의된 그 함수 내부에서만 사용가능한 변수
			- 지역변수의 정의
				* 함수의 내부에서 var키워드를 사용해서 정의
	*/
	
	//전역변수 정의하기
	var globalVar = 1000
	
	function f1() {
		//전역변수 정의하기
		carName='벤츠'
		
		//지역변수 정의하기
		var owner = '홍길동'
		
		console.log('전역변수 값 출력', globalVar)
		console.log('전역변수 값 출력', carName)
		console.log('전역변수 값 출력', owner)
	}
	
	function f2() {
		console.log('전역변수 값 출력', globalVar)
		console.log('전역변수 값 출력', carName)
		//console.log('전역변수 값 출력', owner)		//오류 발생, 다른함수의 지역변수를 접근
	}
	
	f1()
	f2()
	
	/*
		변수 호이스팅의 예
		
		// 개발자가 정의한 함수
		function test() {
			var name = '홍길동'
			var kor = 100
			var eng = 90
			var math = 90
			
			var total = kor + eng + math
			var average = Math.trunc(total/3)
			
			if(average >= 90) {
				var scoreGrade = 'A'
				var message = '장학금 지급대상입니다.'
			}
			console.log('평균', average, '성적', scoreGrade, '메세지', message)		
		}
	
		// 자바스크립트가 실제로 실행되는 코드
		function hoisting() {
			//모든 변수가 호이스팅된다.
			//호이스팅된 변수는 전부 undefined값을 가지고 있다.
			//호이스팅된 변수들은 함수 내의 모든 위치에서 사용할 수 있다.
			var name, kor, eng, math, total, average, scoreGrade, message
		
			name = '오나나'
			kor = '100'
			eng = '100'
			math = '100'
			
			total = kor + eng + math
			average = Math.trunc(total/3)
			if(average >= 90) {
				var scoreGrade = 'A'
				var message = '장학금 지급대상입니다.'
			}
			console.log('평균', average, '성적', scoreGrade, '메세지', message)
		}
	*/
	
	//변수 끌어올리기 (변수 호이스팅)
	function hoisting() {
		
		/*
			변수 끌어올리기
				- 함수내에서 선언된 모든 지역변수는 그 변수의 선언위치와 상관없이 
				  함수의 첫번째 수행문보다 앞으로 끌어올려진다.
				- 자바스크립트에서 지역변수의 스코프 (사용범위)는 함수이다.
		*/
		console.log('이름', name)
		
		//지역변수 선언
		var name = '오나나'
		var kor = '100'
		var eng = '100'
		var math = '100'
		
		var total = kor + eng + math
		var average = Math.trunc(total/3)
		
		if(average >= 90) {
			var scoreGrade = 'A'
			var message = '장학금 지급대상입니다.'
		}
		console.log('평균', average, '성적', scoreGrade, '메세지', message)
	}
	//변수 끌어올리기 함수 실행
	hoisting()
	
	//변수 끌어올리기가 일어나지 않게 하기
	//변수 선언시 var 대신 let 키워드를 사용한다.
	//let 으로 선언된 변수의 스코프는 블록이다.
	function disableHoisting() {
		
		//console.log('이름', name, '국어점수', kor)
		
		let name = '오나나'
		let kor = 100
		let eng = 100
		let math = 100
		let total = kor + eng + math
		let average = Math.trunc(total/3)
		
		if(average >= 90) {
			let scoreGrade = 'A'
			let message = '장학금 지급대상입니다.'
		}
		//let으로 선언된 변수는 그 블록을 벗어난 곳에서는 사용할 수 없다.
		//console.log('평균', average, '성적', scoreGrade, '메세지', message)
	}
	disableHoisting()
</script>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	<p>실행결과는 브라우저 콘솔에서 확인</p>
</body>
</html>