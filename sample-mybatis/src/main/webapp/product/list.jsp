<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="com.sample.util.CommonUtils"%>
<%@page import="java.util.List"%>
<%@page import="com.sample.vo.Product"%>
<%@page import="com.sample.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<title>상품몰</title>
	</head>
	<body>
	<%
		String navItem = "product";
		
		//한 페이지 당 표시할 행의 갯수
		final int ROWS = 5;
	
		//요청파라미터에서 페이지번호 조회하기
		int pageNo = CommonUtils.stringToInt(request.getParameter("page"), 1);
	
		//조회구간 계산하기
		int beginIndex = (pageNo-1) * ROWS + 1;
		int endIndex = pageNo * ROWS;
		
		//Map객체를 생성해서 조회구간 정보를 담기
		Map<String, Object> condition = new HashMap<String,Object>();
		condition.put("beginIndex", beginIndex); // 1 - 5
		condition.put("endIndex", endIndex);	// 6 - 10 ...
		
		ProductDao productDao = ProductDao.getInstance();
		//List<Product> products = productDao.getAllProducts(); // 이제 전체에서 안가져오니까 주석처리
		//ProductDao객체의 getProducts(조회조건)를 실행해서 조회조건에 해당하는 데이터를 조회한다.

		List<Product> products = productDao.getProducts(condition);

		//ProductDao객체의 getRowsCount()를 실행해서 전체 상품정보갯수를 조회한다.
		int totalRows = productDao.getRowsCount();
		//전체 페이지 갯수 계산
		int totalPages = (int) Math.ceil((double) totalRows/ROWS);
	%>
		<div class="container">
		<%@ include file = "../common/header.jsp" %>
			<div class="row mb-3">
				<div class="col-12">
					<h3 class="border p-3 bg-light">
						상품 목록
						<a href="form.jsp" class="btn btn-primary float-right">상품추가</a>
					</h3>
					<p>
						<dl>
							<dt>요청파라미터</dt><dd><%=request.getParameter("page") %></dd>
							<dt>페이지번호</dt><dd><%=pageNo %></dd>
							<dt>조회시작번호</dt><dd><%=beginIndex %></dd>
							<dt>조회종료번호</dt><dd><%=endIndex %></dd>
						</dl>
					</p>
				</div>
			</div>
			<div class="row mb-3">
				<div class="col-12">
					<div class="card">
						<div class="card-body pb-0">
							<table class="table">
								<colgroup>
										<col width="10%" />
										<col width="*" />
										<col width="15%" />
										<col width="13%" />
										<col width="15%" />
										<col width="13%" />
								</colgroup>
								<thead>
									<tr>
										<th>순번</th>
										<th>이름</th>
										<th>제조회사</th>
										<th class="text-right">가격</th>
										<th class="text-right">할인가격</th>
										<th></th>
									</tr>
								</thead>
								<tbody>
								<%
									if (products.isEmpty()) {
								%>
									<tr>
										<td colspan="5" class="text-center">상품이 존재하지 않습니다.</td>
									</tr>						
								<%
									} else {
										for (Product product : products) {
								%>
									<tr>
										<td><%=product.getNo() %></td>
										<td><a href="detail.jsp?no=<%=product.getNo() %>&page=<%=pageNo%>"><%=product.getName() %></a><span class="badge badge-info ml-3"><%=product.getReviewCnt() %></span></td>
										<td><%=product.getMaker() %></td>
										<td class="text-right"><del><%=CommonUtils.numberToString(product.getPrice()) %></del></td>
										<td class="text-right"><strong class="text-danger"><%=CommonUtils.numberToString(product.getDiscountPrice()) %></strong> 원</td>
										<td>
											<a href="../cart/add.jsp?no=<%=product.getNo() %>" class="btn btn-outline-primary btn-sm">장바구니 담기</a>
										</td>
									</tr>
								<%
										}
									}
								%>
								</tbody>
							</table>
						</div>
						<div class="card-body">
							<nav>
		  						<ul class="pagination justify-content-center">
		  
		    						<li class="page-item <%=pageNo > 1 ? "" : "disabled"%>"><a class="page-link" href="list.jsp?page=<%=pageNo-1%>">이전</a></li>
								<%
									for(int num=1; num<=totalPages; num++) {
								%>
		    						<li class="page-item <%=num == pageNo ? "active" : ""%>"><a class="page-link" href="list.jsp?page=<%=num%>"><%=num%></a></li>
								<%
									}
								%>
		    						<li class="page-item <%=pageNo < totalPages ? "" : "disabled"%>"><a class="page-link" href="list.jsp?page=<%=pageNo+1%>">다음</a></li>
		  						</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>