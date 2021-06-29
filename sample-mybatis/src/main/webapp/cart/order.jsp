<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
	카트에서 상품 주문하기
	1. 한 번에 여러 아이템을 선택해서 주문할 수 있다.
		String[] itemNoArray = request.getParatemeterValues("itemNo");
	2. 로그인된 사용자만 주문할 수 있다.
		User sessionSavedUser = (User) session.getAttribute("LOGINED_USER_INFO");
		sessionSavedUser가 null이면 "../user/loginform.jsp?fail=deny&job=주문하기"를 재 요청하게 한다.
		
	3. 자신의 장바구니에 저장된 아이템만 주문할 수 있다.
		CartItem item = cartItemDao.getCartItemByNo(itemNo);
		item의 userId와 로그인한 사용자의 userId가 다른 경우 list.jsp?fail=deny를 재요청하게 한다.
	
	4. 주문시점에 재고가 없거나 부족한 아이템은 주문할 수 없다.
		Product product = productDao.getProductByNo(item.getProductNo());
		product의 재고량이 item의 amount보다 작으면 해당 상품은 주문하지 않는다.
	
	5. 주문이 완료되면 상품의 재고를 감소시킨다.
		product.setStock(product.getStock() - cartItem.getAmount());
		ProductDao객체의  updateProduct(product)를 실행해서 재고량을 변경한다.
	
	6. 주문이 완료되면 전체 주문금액(할인가격을 기준으로 산출된 금액)의 
		3%를 포인트로 적립한다.
		전체 주문금액을 계산하고, 그 금액에 대한 적립포인트를 계산한다.
		로그인한 사용자의 사용자 정보를 조회한다.
		User user = userDao.getUserById(sessionsavedUser.getId());
		user.setPoint(user.getPoint() + 적립포인트);
		UserDao객체의 updateUser(user)를 실행해서 변경된 포인트를 데이터베이스에 반영한다.
		
	7. 주문이 끝나면 현재 주문정보를 확인하는 페이지를 요청한s URL을 응답으로 보낸다.
		response.sendRedirect(주문정보확인하는 페이지에 대한 URL)
 -->
 