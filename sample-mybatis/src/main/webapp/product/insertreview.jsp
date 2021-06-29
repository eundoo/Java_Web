<%@page import="com.sample.vo.Product"%>
<%@page import="com.sample.dao.ProductDao"%>
<%@page import="com.sample.dao.ReviewDao"%>
<%@page import="com.sample.vo.Review"%>
<%@page import="com.sample.util.CommonUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션객체에서 사용자 정보 조회
	User sessionSavedUser = (User) session.getAttribute("LOGINED_USER_INFO");
	// 사용자정보가 존재하지 않으면 로그인폼을 재요청 하게 된다. 
	if(sessionSavedUser == null) {
		String encodedText = URLEncoder.encode("리뷰등록하기", "utf-8");
		response.sendRedirect("../user/loginform.jsp?fail=deny&job=" + encodedText);
		return;
	}
	
	//detail.jsp의 리뷰등록폼에서 전송한 값을 요청파라미터값을 조회한다.
	int productNo = CommonUtils.stringToInt(request.getParameter("productNo"));
	int pageNo = CommonUtils.stringToInt(request.getParameter("page"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	
	//입력값 유효성 검증
	if(title.isBlank() || content.isBlank()) {
		response.sendRedirect("detail.jsp?no=" + productNo + "&page=" + pageNo + "&fail=blank");
		return;
	}
	
	//Review 객체를 생성해서 리뷰정보 저장하기
	Review review = new Review();
	review.setTitle(title);
	review.setContent(content);
	review.setProductNo(productNo);
	review.setUserId(sessionSavedUser.getId());
	
	//SAMPLE_PRODUCT_REVIEWS에 CRUD기능을 지원하는 ReviewDao객체 획득하기
	ReviewDao reviewDao = ReviewDao.getInstance();
	reviewDao.insertReview(review);
	
	//리뷰번호에 해당하는 리뷰 삭제하기
	ProductDao productDao = ProductDao.getInstance();
	
	Product product = productDao.getProductByNo(productNo);
	product.setReviewCnt(product.getReviewCnt() + 1);
	
	productDao.updateProduct(product);
	
	//상품 상세 페이지를 재요청하는 URL을 응답으로 보낸다.
	response.sendRedirect("detail.jsp?no=" + productNo + "&page=" + pageNo);
%>
