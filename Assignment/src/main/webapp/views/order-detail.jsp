<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../views/commons/_taglib.jsp" %>
<!doctype html>
<html lang="en" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="../views/img/fav.png">
<!-- Author Meta -->
<meta name="author" content="CodePixar">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>Book Shop</title>
<%@include file="../views/commons/_head.jsp" %>
</head>

<body>
	<!-- Start Header Area -->
	<%@include file="../views/commons/_header.jsp" %>
	<!-- End Header Area -->
	
	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Chi tiết đơn hàng</h1>
					<nav class="d-flex align-items-center">
						<a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a>
						<a href="/user/orders">Đơn hàng của tôi<span class="lnr lnr-arrow-right"></span></a>
						<a href="/user/orders/order-detail">Chi tiết đơn hàng</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Order Details Area =================-->
	<section class="order_details section_gap">
		<div class="container">
			<div class="order_d_inner">
				<div class="">
					<div class="details_item">
						<h4>Chi tiết đơn hàng</h4>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Mã Đơn</th>
									<th scope="col">Ngày Đặt</th>
									<th scope="col">Tổng Tiền</th>
									<th scope="col">Phương Pháp Thanh Toán</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th scope="row">${orders.id}</th>
									<td><fmt:formatDate value="${orders.orderDate}" pattern="dd/MM/yyyy" /></td>
									<td>${orders.getTotal()}</td>
									<td>Paypal</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="order_details_table">
				<h2>Chi tiết hóa đơn</h2>
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Sản phẩm</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Tổng tiền</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${orderDetails}">
								<tr>
									<td>
										<p>${item.book.title}</p>
									</td>
									<td>
										<h5>${item.qty}</h5>
									</td>
									<td>
										<p>
											<fmt:formatNumber type="number" value="${item.qty*item.price}" pattern="#,##0" />
											VND
										</p>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Order Details Area =================-->

	<!-- Start footer Area -->
	<%@include file="../views/commons/_footer.jsp" %>
	<!-- End footer Area -->
	<%@include file="../views/commons/_jsFiles.jsp" %>
</body>
</html>