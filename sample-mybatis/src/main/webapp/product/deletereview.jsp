<%@page import="com.sample.dao.ProductDao"%>
<%@page import="com.sample.vo.Product"%>
<%@page import="com.sample.vo.Review"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="com.sample.util.CommonUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그인 여부 체크
	User sessionSavedUser = (User) session.getAttribute("LOGINED_USER_INFO");
	if (sessionSavedUser == null) {
		String encodedText = URLEncoder.encode("리뷰삭제하기", "utf-8");
		response.sendRedirect("../user/loginform.jsp?fail=deny&job=" + encodedText);
		return;
	}
	
	// deletereview.jsp?productNo=상품번호&page=페이지번호&reviewNo=리뷰번호
	// 요청파라미터값 조회
	int productNo = CommonUtils.stringToInt(request.getParameter("productNo"));
	int pageNo = CommonUtils.stringToInt(request.getParameter("page"));
	int reviewNo = CommonUtils.stringToInt(request.getParameter("reviewNo"));
	
	// SAMPLE_PRODUCT_REVIEWS 테이블에 대한 CRUD기능이 구현된 ReviewDao객체 생성하기
	ReviewDao reviewDao = ReviewDao.getInstance();
	// ReviewDao객체의 getReviewByNo(리뷰번호)를 실행해서 리뷰정보 조회하기
	Review review = reviewDao.getReviewByNo(reviewNo);
	// 리뷰를 작성한 사용자아이디와 로그인한 사용자의 아이디가 일치하는지 체크
	if (!review.getUserId().equals(sessionSavedUser.getId())) {
		response.sendRedirect("detail.jsp?no=" + productNo + "&page=" + pageNo + "&fail=deny");
		return;
	}
	
	// 리뷰번호에 해당하는 리뷰 삭제하기
	reviewDao.deleteReview(reviewNo);
	
	ProductDao productDao = ProductDao.getInstance();
	Product product = productDao.getProductByNo(productNo);
	
	product.setReviewCnt(product.getReviewCnt() - 1);
		
	productDao.updateProduct(product);
	
	// 응답으로 상세페이지를 요청하는 URL을 보내기
	response.sendRedirect("detail.jsp?no=" + productNo + "&page=" + pageNo);
%>