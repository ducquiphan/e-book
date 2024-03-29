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
					<h1>Thông tin cá nhân</h1>
					<nav class="d-flex align-items-center">
						<a href="/home">Trang chủ<span class="lnr lnr-arrow-right"></span></a> <a href="/user">Thông tin cá nhân</a>
					</nav>
				</div>
			</div>
		</div>
	</section>
	<!-- End Banner Area -->

	<!--================Personal Info Box Area =================-->
	<section class="login_box_area section_gap">
		<div class="container">
			<div class="login_form_inner">
				<h2>Đổi mật khẩu</h2>
				<form class="row login_form" action="/user/change-password" method="post" id="contactForm" enctype="multipart/form-data">
					<div class="col-md-12">
						<span class="text-align-center">${message}</span>
					</div>
					<div class="col-md-12 form-group">
						<input type="password" class="form-control" id="password" name="password" placeholder="Mật khẩu cũ"
							onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mật khẩu cũ'">
					</div>
					<div class="col-md-12 form-group">
						<input type="password" class="form-control" id="newPassword" name="newPassword" placeholder="Mật khẩu mới"
							onfocus="this.placeholder = ''" onblur="this.placeholder = 'Mật khẩu mới'">
					</div>
					<div class="col-md-12 form-group">
						<input type="password" class="form-control" id="passwordConfirmation" name="passwordConfirmation"
							placeholder="Xác nhận mật khẩu" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Xác nhận mật khẩu'">
					</div>
					</tbody>
					<div class="col-md-12 form-group">
						<button type="submit" class="primary-btn">Đổi mật khẩu</button>
					</div>
				</form>
			</div>
		</div>

	</section>
	<!--================Personal Info Box Area =================-->

	<!-- Start footer Area -->
	<%@include file="../views/commons/_footer.jsp"%>
	<!-- End footer Area -->
	<%@include file="../views/commons/_jsFiles.jsp"%>
</body>
</html>