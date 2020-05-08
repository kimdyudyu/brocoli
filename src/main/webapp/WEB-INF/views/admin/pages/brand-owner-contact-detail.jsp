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
								<h2 class="pageheader-title">오너 콘택트</h2>
								<div class="page-breadcrumb">
									<nav aria-label="breadcrumb">
										<ol class="breadcrumb">
											<li class="breadcrumb-item">가맹브랜드 관리</a></li>
											<li class="breadcrumb-item">오너콘택트</a></li>
											<li class="breadcrumb-item">상세보기</a></li>
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
									<div class="card-header" style="border-bottom: none; padding-top: 22px; padding-bottom: 22px; background-color: none; font-family: 'Do Hyeon', sans-serif;">
										<h2 class="card-title" style="margin-bottom: 0px; font-size: 17px">
											<span style="font-size:85%;">작성자</span>
											<span style="padding-left:6%; font-size:85%;">${c.con_Writer}</span>
											<br><hr>
											<div style="float:left; width:50%">
											<span style="font-size:85%;">제  목</span>
											<span style="padding-left:15%; font-size:85%;">${c.con_Title}</span> 
											</div> 
											<div style="float:left;width:50%">
											<span style="padding-left:160px; font-size:85%;">작성일</span>
											<span style="padding-left:5%; font-size:85%;">${c.con_Date}</span>
											</div>
											<br><hr>
											<span style="font-size:85%;">이미지</span>
											<div class="col-12 col-sm-8 col-lg-6">
                                            <div class="form-group row">
                                              <div id="titleImgArea" style=" float: left; width: 100px; height: 100px; vertical-align: middle; display: flex; align-items: center; class="img-thumbnail mr-3" >
                                                <c:set var="img" value="${c.con_Img_ReName}"/>
                                                <c:if test="${empty img}">
                                                	<img src="/brocoli/resources/adminResources/images/noImage.PNG" alt=""  style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                              	</c:if>    
                                                <c:if test="${not empty img }">
                                            	 	<img id="titleImg" src="/brocoli/resources/ownerContact/${c.con_Img_ReName}"  alt=""  style="width: 161px;height: auto; max-width: 161px; max-height: 200px;">
                                              	</c:if> 
                                              </div>
                                            </div>
                                       	    </div>
										</h2>
									</div>

								</div>

								<div class="card-body">
									<div class="row mb-4">
										<div class="col-sm-6" style="padding-left:6%;">
											${c.con_Content}
										</div>
									</div>

									<div class="card-footer float-right" style="background-color: transparent !important; border-top: white;">
										<c:url var="ownerContactUpdate" value="ownerContactUpdate.ad">
											<c:param name="con_NO" value="${c.con_NO}"/>
										</c:url>
										<a href="${ownerContactUpdate}">
											<button  class="btn btn-dark btn-xs">수정</button>
										</a>
									</div>
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