<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 연산자</title>
<script type="text/javascript">
	//자바스크립트 연산자
	//산술연산자, 대입연산자, 증감연산자, 비교연산자, 논리연산자, 삼항연산자.
	
	//산술연산자
	// + - */ %
	var num1 = 10;
	var num2 = 4;
	var result = num1/num2;
	console.log("정수/정수", result);
	console.log("소숫점 없애기", Math.trunc(result));
	console.log("반올림하기", Math.round(result));
	
	//대입연산자
	// = += -= += /+ %=
	var num3 = 100;
	num3 += 20;
	num3 += 20;
	num3 += 20;
	console.log("변수에 누적된 값", num3);
	
	//증감연산자
	// ++ --
	var num4 = 300;
	num4++;
	++num4;
	console.log("변수의 값 1씩 증가시키기", num4);
	
	//비교연산자
	// == === != !== >= < <=
		
	// == 연산자와 === 연산자
	// == 연산자는 값이 타입이 다르더라도 변환 후 같은 값으면 true로 판정한다.
	// === 연산자는 값이 타입과 값이 전부 일치하는 경우에만 true로 판정한다.
	console.log("5 =='5'", 5 =='5');		//true
	console.log("5 == 5", 5 == 5 );			//true
	console.log("5 === '5'", 5 === '5');	//false
	console.log("5 == 5", 5 == 5 );			//true
	
	// != 연산자와 !==연산자
	// != 연산자는 값이 다르면 true로 판정한다.
	// !== 연산자는 타입, 값 둘 중 하나만 달라도 true를 반환한다.
	console.log("5 != 5", 5 != 5);			//false		//값이 달라서 false
	console.log("5 != '5'", 5 != '5');		//false
	console.log("5 != 8", 5 != 8);			//true
	console.log("5 != '8'", 5 != '8');		//true
	
	console.log("5 !== 5", 5 !== 5);		//false		//값도 같고, 타입도 같아서 false
	console.log("5 !== '5'", 5 !== '5');	//true		//타입이 달라서 true
	console.log("5 !== 8", 5 !== 8);		//true		//값이 달라서 true
	console.log("5 !== '8'", 5 !== '8');	//true		//타입이 다르고, 값도 달라서 true
	
	//논리연산자 
	// && || !
	//자바스크립트에서 거짓으로 판정하는 것 : false,0,'',null,undefined,NaN
	//자바스크립트에서 참으로 판정하는 것 : 거짓으로 판정하는 것 빼고 나머지 전부 다 
	console.log("!!0", !!0);
	console.log("!!''", !!'');
	console.log("!!null", !!null);
	console.log("!!undefined", !!undefined);
	console.log("!!NaN", !!NaN);
	console.log("!!1", !!1);
	console.log("!!'안녕'", !!'안녕');
	console.log("!!-21", !!-21);
	
	//삼항연산자
	//조건식 ? 표현식1 : 표현식2
	//조건식이 참이면 표현식1의 값이 이 식의 최종값이 되고, 거짓이면 표현식2가 최종값이 된다.
	
	
</script>
</head>
<body>
	<h1>자바스크립트 연산자</h1>
	<p>실행결과는 브라우저 콘솔창에서 확인</p>
</body>
</html>