<%@page import="com.sample.vo.User"%>
<%@ page pageEncoding="UTF-8"%>
<%
	//클라이언트 전용의 세션객체에 "LOGINED_USER_INFO"라는 이름으로 저장된 객체를 조회한다.
	//사용자 인증과정을 통과한 클라이언트라면 세션객체에 "LOGINED_USER_INFO"라는 이름으로 저장된 객체를
	//찾을 수 있다.
	//loginedUser가 null이 아니면 사용자 인증과정을 통과한 사용자이다.
	//logineduser가 null이면 사용자 인증과정을 수행하지 않았거나, 인증과정을 통과하지 못한 경우이다.
	User loginedUser = (User) session.getAttribute("LOGINED_USER_INFO");
%>
<p><%=loginedUser %></p>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark my-3">
	<a class="navbar-brand" href="/sample-mybatis/index.jsp">NANA GOODs</a>
  	<ul class="navbar-nav  mr-auto">
    	<li class="nav-item <%="home".equals(navItem) ? "active" : ""%>"><a class="nav-link" href="/sample-mybatis/index.jsp">홈</a></li>
    	<li class="nav-item <%="product".equals(navItem) ? "active" : ""%>"><a class="nav-link" href="/sample-mybatis/product/list.jsp">상품목록</a></li>
  		<%
  			if(loginedUser != null) {
  		%>
    	<li class="nav-item"><a class="nav-link" href="/sample-mybatis/cart/list.jsp">나의 장바구니</a></li>
    	<li class="nav-item"><a class="nav-link" href="/sample-mybatis/order/list.jsp">나의 주문내역</a></li>
  		<%
  			}
  		%>
  	</ul>
  	<ul class="navbar-nav">
  		<!-- 로그인되지 않은 경우 로그인/회원가입이 표시된다. -->
  	<%
  		if(loginedUser == null) {
  	%>	
    	<li class="nav-item "><a class="nav-link" href="/sample-mybatis/user/loginform.jsp">로그인</a></li>
    	<li class="nav-item <%="register".equals(navItem) ? "active" : ""%>"><a class="nav-link" href="/sample-mybatis/user/registerform.jsp">회원가입</a></li>
    <%
  		} else {
    %>	
    	<!-- 로그인된 경우 사용자이름/로그아웃이 표시된다. -->
    	<li class="nav-item <%="user".equals(navItem) ? "active" : ""%>"><a class="nav-link" href="/sample-mybatis/user/detail.jsp"><%=loginedUser.getName() %></a></li>
    	<li class="nav-item"><a class="nav-link" href="/sample-mybatis/user/logout.jsp">로그아웃</a></li>
  	<%
  		}
  	%>
  	</ul>
</nav>