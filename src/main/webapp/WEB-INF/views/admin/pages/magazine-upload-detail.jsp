<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/bootstrap/css/bootstrap.min.css">
<link
	href="/brocoli/resources/adminResources/vendor/fonts/circular-std/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/libs/css/style.css">
<link rel="stylesheet"
	href="/brocoli/resources/adminResources/vendor/fonts/fontawesome/css/fontawesome-all.css">
<title>Concept - Bootstrap 4 Admin Dashboard Template</title>
</head>

<body>
	<%@ include file="header.jsp"%>
	<!-- ============================================================== -->
	<!-- main wrapper -->
	<!-- ============================================================== -->
	<div class="dashboard-main-wrapper">

		<!-- ============================================================== -->
		<!-- wrapper  -->
		<!-- ============================================================== -->
		<div class="dashboard-wrapper">
			<div class="dashboard-ecommerce">
				<div class="container-fluid dashboard-content ">
					<!-- ============================================================== -->
					<!-- pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="page-header">
								<h2 class="pageheader-title">매거진 현황</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item">매거진 관리</a></li>
											<li class="breadcrumb-item">매거진 현황</a></li>
											<li class="breadcrumb-item">게시글</a></li>
										</ol>
									</nav>
								</div>
							</div>
						</div>
					</div>
					<!-- ============================================================== -->
					<!-- end pageheader  -->
					<!-- ============================================================== -->
					<div class="row">
						<div
							class="offset-xl-2 col-xl-8 col-lg-12 col-md-12 col-sm-12 col-12">
							<div class="card">
								<div class="card-header p-4">
									<div class="card-header"
										style="border-bottom: none; padding-top: 22px; padding-bottom: 22px; background-color: none; font-family: 'Do Hyeon', sans-serif;">
										<h3 class="card-title"
											style="margin-bottom: 0px; font-size: 17px">
											<span style="float: left;">작성자 </span> <span
												style="float: right; padding-right: 80px;">조회수 </span><br>
											<hr>
											<span
												style="float: left; margin-top: 10px; margin-bottom: 10px;">제목
											</span> <span
												style="float: right; padding-top: 10px; padding-right: 80px;">작성일
											</span><br> <br>
											<hr>
											<span
												style="float: left; width: 1000px; margin-right: 810px;">첨부파일
												미리보기 </span>
										</h3>
									</div>

								</div>

								<div class="card-body">
									<div class="row mb-4">
										<div class="col-sm-6">
											<h5 class="mb-3"></h5>
											<h3 class="text-dark mb-1">Gerald A. Garcia</h3>

											<div>2546 Penn Street</div>
											<div>Sikeston, MO 63801</div>
											<div>Email: info@gerald.com.pl</div>
											<div>Phone: +573-282-9117</div>
										</div>
										<div class="col-sm-6">
											<h5 class="mb-3"></h5>
											<h3 class="text-dark mb-1">Anthony K. Friel</h3>
											<div>478 Collins Avenue</div>
											<div>Canal Winchester, OH 43110</div>
											<div>Email: info@anthonyk.com</div>
											<div>Phone: +614-837-8483</div>
										</div>
									</div>

								</div>
								<div class="card-footer bg-white">
								</div>
									<div class="card-footer float-right"
										style="background-color: transparent !important; border-top: white;">
										<form action="/brocoli/admin/pages/magazine-upload.jsp"
											method="post" style="padding-left:92%;">
											<button type="submit" class="btn btn-dark ">삭제</button>
										</form>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- ============================================================== -->
			<!-- end wrapper  -->
			<!-- ============================================================== -->
		</div>
	</div>
	<!-- ============================================================== -->
	<!-- end main wrapper  -->
	<!-- ============================================================== -->






	<!-- Optional JavaScript -->
	<!-- slimscroll js -->
	<script
		src="/brocoli/resources/adminResources/vendor/slimscroll/jquery.slimscroll.js"></script>
	<!-- main js -->
	<script src="/brocoli/resources/adminResources/libs/js/main-js.js"></script>
</body>

</html>