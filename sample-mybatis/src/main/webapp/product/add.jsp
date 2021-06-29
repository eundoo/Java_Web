<%@page import="com.sample.dao.ProductDao"%>
<%@page import="com.sample.vo.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// form.jsp에서 제출된 요청파라미터값을 조회한다.
	String category = request.getParameter("category");
	String name = request.getParameter("name");
	String maker = request.getParameter("maker");
	int price = Integer.parseInt(request.getParameter("price"));
	int discountPrice = (int) Math.round(price*0.9);
	
	// Product객체를 생성해서 요청파라미터값 저장
	Product product = new Product();
	product.setCategory(category);
	product.setName(name);
	product.setMaker(maker);
	product.setPrice(price);
	product.setDiscountPrice(discountPrice);
	// SAMPLE_PRODUCTS 테이블에 대한 CRUD 기능이 구현된 ProductDao객체 획득
	ProductDao productDao = ProductDao.getInstance();
	// ProductDao객체의 insertProduct(새 상품정보) 실행해서 데이터베이스에 저장
	productDao.insertProduct(product);
	// 브라우저에게 재요청 URL(상품목록을 요청하는 URL, list.jsp)를 응답보낸다.
	response.sendRedirect("list.jsp");
	
%>