<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="../views/commons/_taglib.jsp"%>
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
<%@include file="../views/commons/_head.jsp"%>
</head>

<body>
	<!-- Start Header Area -->
	<%@include file="../views/commons/_header.jsp"%>
	<!-- End Header Area -->

	<!-- Start Banner Area -->
	<section class="banner-area organic-breadcrumb">
		<div class="container">
			<div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
				<div class="col-first">
					<h1>Giỏ hàng</h1>
					<nav class="d-flex align-items-center">
						<a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a> <a href="/cart">Giỏ hàng</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Cart Area =================-->
	<section class="cart_area">
		<div class="container">
			<div class="cart_inner">
				<div class="table-responsive">
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Sản phẩm</th>
								<th scope="col">Giá</th>
								<th scope="col">Số lượng</th>
								<th scope="col">Tổng tiền</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="item" items="${sessionScope.cart}">
								<form action="/cart/update?id=${item.value.id}" method="post">
									<tr>
										<td>
											<div class="media">
												<div class="d-flex">
													<img src="${path}/img/category/${item.value.picturePath}" alt="" style="height: 150px; width: auto">
												</div>
												<div class="media-body">
													<p>${item.value.title}</p>
												</div>
											</div>
										</td>
										<td>
											<h5>
												<fmt:formatNumber value="${item.value.price}" type="number" pattern="#,##0" />
												VND
											</h5>
										</td>
										<td>
											<div class="product_count">
												<input type="number" name="qty" value="${item.value.qty}" onblur="this.form.submit()" onchange="this.form.submit()"
													id="${item.value.id}sst" maxlength="" title="Số lượng:" class="input-text qty">
												<button
													onclick="var result = document.getElementById('${item.value.id}sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst < 20 ){ result.value++; this.form.submit()} else return false;"
													class="increase items-count" type="button">
													<i class="lnr lnr-chevron-up"></i>
												</button>
												<button
													onclick="var result = document.getElementById('${item.value.id}sst'); var sst = result.value; if( !isNaN( sst ) &amp;&amp; sst > 1 ) {result.value--; this.form.submit()} else return false;"
													class="reduced items-count" type="button">
													<i class="lnr lnr-chevron-down"></i>
												</button>
											</div>
										</td>
										<td>
											<h5>
												<fmt:formatNumber value="${item.value.price*item.value.qty}" type="number" pattern="#,##0" />
												VND
											</h5>
										</td>
										<td><a href="/cart/delete?id=${item.value.id}"><i class="ti-trash"></i></a></td>
									</tr>
								</form>
							</c:forEach>

							<tr class="bottom_button">
								<td><a class="gray_btn" href="/cart/clear">Xóa Giỏ Hàng</a></td>
								<td></td>
								<td colspan="2"></td>
							</tr>
							<tr class="bottom_button">

								<td colspan="4">
									<div class="cupon_text d-flex align-items-center justify-content-center">
										<input type="text" placeholder="Mã giảm giá"> <a class="primary-btn" href="#">Áp dụng</a> <a class="gray_btn"
											href="#">Xóa mã</a>
									</div>
								</td>
							</tr>
							<tr>
								<td><h5>Số lượng</h5></td>
								<td><h5>${quantity}</h5></td>
								<td>
									<h5>Tổng tiền</h5>
								</td>
								<td>
									<h5>
										<fmt:formatNumber value="${amount}" type="number" pattern="#,##0" />
									</h5>
								</td>
							</tr>
							<tr class="out_button_area">
								<td colspan="4">
									<div class="checkout_btn_inner d-flex align-items-center">
										<a class="gray_btn" href="/category">Tiếp tục mua hàng</a><a class="primary-btn" href="/cart/checkout">Thanh toán</a>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</section>
	<!--================End Cart Area =================-->

	<!-- Start footer Area -->
	<%@include file="../views/commons/_footer.jsp"%>
	<!-- End footer Area -->
	<%@include file="../views/commons/_jsFiles.jsp"%>

</body>
</html>