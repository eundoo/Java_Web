<%@page import="com.sample.vo.CartItem"%>
<%@page import="com.sample.dao.CartItemDao"%>
<%@page import="com.sample.util.CommonUtils"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="com.sample.vo.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//로그인 여부 체크하기
	User sessionSavedUser = (User) session.getAttribute("LOGINED_USER_INFO");
	if(sessionSavedUser == null) {
		String encodedText = URLEncoder.encode("장바구니 아이템삭제", "utf-8");
		response.sendRedirect("../user/loginform.jsp?fail=deny&job=" + encodedText);
		return;
	}
	
	//요청파라미터에서 아이템번호를 조회한다.
	int itemNo = CommonUtils.stringToInt(request.getParameter("no"));
	
	//SAMPLE_CART_ITEMS 테이블에 대한 CRUD기능이 구현된 CartItemDao객체를 획득한다.
	CartItemDao cartItemDao = CartItemDao.getInstance();
	//아이템 번호에 해당하는 아이템 정보를 조회하기
	CartItem cartItem = cartItemDao.getCartItemByNo(itemNo);
	
	//아이템 정보가 조회되지 않으면
	if(cartItem == null) {
		response.sendRedirect("list.jsp?fail=invalid");
		return;
	}
	
	//아이템을 등록한 사람의 아이디와 로그인한 사용자의 아이디가 동일하지 않으면
	if(cartItem.getUserId().equals(sessionSavedUser.getId())) {
		response.sendRedirect("list.jsp?fail=deny");
		return;
	}
	
	//아이템 번호에 해당하는 아이템정보를 삭제한다.
	cartItemDao.deleteCartItem(itemNo);
	
	//브라우저에게 목록페이지를 재요청하는 URL을 보낸다.
	response.sendRedirect("list.jsp");

%>