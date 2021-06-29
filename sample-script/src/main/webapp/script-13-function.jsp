<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자바스크립트 함수</title>
<script type="text/javascript">
	var products = [
		{name:'연필', price:1500, stock:100},
		{name:'공책', price:2000, stock:500},
		{name:'샤프', price:15000, stock:46},
		{name:'시계', price:160000, stock:10},
		{name:'지우개', price:700, stock:600}
	];
	
	function search(filter) {
		var filteredItems = []
		
		for (var i=0; i<products.length; i++) {
			var item = products[i]
			if(filter(item)) {
				filteredItems.push(item)
			}
		}
		
		return filteredItems
	}
	
	//상품가격이 1만원 이상 5만원 이하인 상품을 검색한다.
	var items1 = search(function(product) {
		if(product.price >= 10000 && product.price <= 50000) {
			return true
		}
		return false
	})
	console.log(items1)
	
	//상품의 재고량이 500개 이하인 상품을 검색한다.
	var items2 = search(product => product.stock > 500);
	colsole.log(items2)
	
	//
</script>
</head>
<body>
	<h1>자바스크립트 함수</h1>
	<p>실행결과는 브라우저 콘솔에서 확인</p>
</body>
</html>