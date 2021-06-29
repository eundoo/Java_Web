<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트의 객체</title>
	<script type="text/javascript">
		//자바스크립트의 객체	
		/*
			- 기본자료형(number,string,boolean, undefined 등)을 제외하고 나머지는 거의 전부 객체이다.
			- 프로퍼티와 메소드를 가진다.
			- 자바스크립트의 객체는 자바의 Map과 유사하다.
				* key : 프로퍼티명, 메소드명
				* value : 기본자료형 값, 배열, 객체, 함수
				* 언제든지 객체의 프로퍼티와 메소드를 추가/삭제할 수 있다.
				{
					이름:값,  <-- 프로퍼티		-- 자바의 멤버변수
					이름:값,  <-- 프로퍼티		-- 자바의 멤버변수
					이름:기능,  <--메소드		-- 자바의 메소드
					이름:기능	<--메소드		-- 자바의 메소드
				}
			- 객체 생성하기
				* 객체 리터럴
					var obj = {};	//구성요소가 하나도 없는 객체 생성
					var obj = {
									no:"100-11-1000",		->프로퍼티
							   		balance:1200000,
							  		deposit:function(money) {	-> 수행문을 가지기 때문에 메소드
								   		수행문;
								   	}	 
							   };
				* 생성자 함수
					//생성자 함수
					function User(no, id, name) {
						this.no = no;
						this.id = id;
						this.name = name;
				}
				//생성자 함수를 사용해서 객체 생성하기
				var user = new User();
				
				* Object 생성자 함수
					var user = new Object();
		*/
		
		//객체 생성하기
		var emptyObject = {}
		console.log("구성요소가 없는 객체", emptyObject)
		console.log("타입", typeof(emptyObject))
		
		//구성요소를 가지고 있는 객체 생성하기
		var obj = {
			name: '오나나',
			email: 'nana@gmail.com',
			phone: '010-1111-2222',
			displayInfo: function() {
				console.log("### 사용자 정보 력###")
				console.log('이름', this.name)
				console.log('이메일', this.email)
				console.log('전화번호', this.phone)
			}
		}
		console.log('구성요소가 있는 객체', obj)
		obj.displayInfo();
		
		//객체 생성 및 초기화
		var obj2 = {
				no:undefined,
				name:undefined,
				phone:undefined,
				email:undefined,		//빈문자열 넣어도됨
		}
		console.log('두번째 객체', obj2);
		obj2.no = 100;
		obj2["name"] = '오나나';
		obj2['phone'] = '010-1111-1111'
		obj2.email = 'nana@gmail.com'
		console.log('두번째 객채', obj2)

		//프로퍼티 조회하기
		console.log('번호', obj.no)
		console.log('이름', obj.name)
		console.log('연락처', obj.phone)
		console.log('이메일', obj.email)
		console.log('주소1', obj2.address1)		//객체가 가지고 있지 않은 프로퍼티를 조회해도 에러가 발생하지 않음
		console.log('주소2', obj2.address2)		//underfined가 출력됨
		
		//프로퍼티 값 변경/추가하기
		obj2.phone = '010-1234-5678'			//객체에 phone 프로퍼티가 있기 때문에 phone프로퍼티의 값이 '변경'된다.
		obj2.address1 = '서울 종로구'			//객체에 address1프로퍼티가 없기 때문에 address1프로퍼티가 '추가'된다.
		obj2.address2 = '율곡로 100길 1000'
		console.log('두번째 객체', obj2)
		
		var obj3 = obj2;						//obj3에 obj2가 참조하는 객체의 주속값이 대입됨
		obj3.name = '오나나'					//obj3가 참조하는 객체의 프로퍼티를 변경함
		obj3.email = 'nana@gmail.com'
		obj3.phone = '010-1111-1111'
		obj3.address2 = '종로 1길 105'
		console.log('두번째 객체', obj2)		//obj2와 obj3가 같은 객체를 참조하기 때문에
		console.log('세번째 객체', obj3)		//obj2를 출력한 내용과 obj3를 출력한 내용이 동일함
		
	</script>
</head>
<body>
	<h1>자바스크립트의 객체</h1>
</body>
</html>